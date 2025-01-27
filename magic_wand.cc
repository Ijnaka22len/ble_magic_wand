
#include "sl_tflite_micro_model.h"
#include "sl_tflite_micro_init.h"
#include "sl_sleeptimer.h"
#include "magic_wand.h"
#include "accelerometer.h"
#include "sl_simple_button_instances.h"
#include "math.h"
#include "config.h"
// BLE header
#include "sl_bluetooth.h"
#include "app_assert.h"
#include "gatt_db.h"
#include "em_common.h"
//
static int input_length;
static TfLiteTensor* model_input;
static tflite::MicroInterpreter* interpreter;
static acc_data_t buf[SEQUENCE_LENGTH] = { 0.5f, 0.5f, 0.5f };
static bool infer = false;
static bool read_accel = false;
static int head_ptr = 0;
static int inference_trigger_samples_num = round(INFERENCE_PERIOD_MS / ACCELEROMETER_FREQ);
static acc_data_t prev_data = { 0.5f, 0.5f, 0.5f };
static void listen_for_gestures(bool enable)
{
  if (enable) {
    for (uint8_t i = 0; i < SEQUENCE_LENGTH; i++) {
      acc_data_t _d = { 0.5f, 0.5f, 0.5f };
      buf[i] = _d;
    }
    read_accel = true;
  } else {
    read_accel = false;
    head_ptr = 0;
  }
}
void sl_button_on_change(const sl_button_t *handle)
{
  if (sl_button_get_state(handle) == SL_SIMPLE_BUTTON_PRESSED) {
    if (&sl_button_btn0 == handle) {
      listen_for_gestures(true);
    }
  } else if (sl_button_get_state(handle) == SL_SIMPLE_BUTTON_RELEASED) {
    if (&sl_button_btn0 == handle) {
      listen_for_gestures(false);
      //reset_report();
    }
  }
}

// Called when the IMU has data available using gpio interrupt.
static void on_data_available(uint8_t int_id, void *ctx)
{
  (void) int_id;
  (void) ctx;
  acc_data_t data = { 0, 0, 0 };
  sl_status_t status = accelerometer_read(&data);
  if (status == SL_STATUS_FAIL || !read_accel) {
    return;
  }
  // Range: [-2000, 2000]
  data.x /= 2000;
  data.y /= 2000;
  data.z /= 2000;
  // Range: [-1, 1]
  acc_data_t delta_data = { 0 };
  delta_data.x = data.x - prev_data.x;
  delta_data.y = data.y - prev_data.y;
  delta_data.z = data.z - prev_data.z;
  // Range: [-2, 2]
  delta_data.x = (delta_data.x / 2 + 1) / 2;
  delta_data.y = (delta_data.y / 2 + 1) / 2;
  delta_data.z = (delta_data.z / 2 + 1) / 2;
  // Range: [0, 1]
  buf[head_ptr].x = delta_data.x;
  buf[head_ptr].y = delta_data.y;
  buf[head_ptr].z = delta_data.z;

  head_ptr++;
  prev_data.x = data.x;
  prev_data.y = data.y;
  prev_data.z = data.z;
  if (head_ptr >= SEQUENCE_LENGTH) {
    head_ptr = 0;
  }
  if (head_ptr % inference_trigger_samples_num == 0) {
    infer = true;
  }
}
void magic_wand_init(void)
{
  printf("\r\n Initializing Magic Wand...\r\n");

  // Obtain pointer to the model's input tensor.
  model_input = sl_tflite_micro_get_input_tensor();
  interpreter = sl_tflite_micro_get_interpreter();
  if ((model_input->dims->size != 4) || (model_input->dims->data[0] != 1)
      || (model_input->dims->data[1] != SEQUENCE_LENGTH)
      || (model_input->dims->data[2] != ACCELEROMETER_CHANNELS)
      || (model_input->type != kTfLiteFloat32)) {
    app_log_error("Bad input tensor parameters in model.\n");
    EFM_ASSERT(false);
    return;
  }

  input_length = model_input->bytes / sizeof(float);

  sl_status_t setup_status = accelerometer_setup(on_data_available);

  if (setup_status != SL_STATUS_OK) {
    app_log_error("Accelerometer setup failed.\n");
    EFM_ASSERT(false);
    return;
  }

  // Waiting for accelerometer to become ready
  while (true) {
    sl_status_t status = accelerometer_read(NULL);
    if (status == SL_STATUS_OK) {
      break;
    }
  }
  printf(" Ready...!\r\n");
}


void send_gesture_via_ble(uint8_t gesture)
{
    printf(" BLE sent byte: %u\r\n", (unsigned int)gesture);
    sl_status_t sc;
    sc = sl_bt_gatt_server_notify_all(gattdb_gesture_data,
                                        sizeof(gesture),
                                        &gesture);
    app_assert_status(sc);
}

static void handle_output(int gesture)
{
  uint8_t gesture_value = GESTURE_UNKNOWN;
  if (gesture == GESTURE_UP) {
      printf(" Gesture= UP      ");
      gesture_value = GESTURE_UP;
    // We dont want multiple of this gesture, so we stop listening
    listen_for_gestures(false);
  } else if (gesture == GESTURE_CIRCLE) {
      printf(" Gesture= Circle      ");
      gesture_value = GESTURE_CIRCLE;
    listen_for_gestures(false);
  } else if (gesture == GESTURE_DOWN) {
      printf(" Gesture= Down      ");
      gesture_value = GESTURE_DOWN;
    listen_for_gestures(false);
  } else if (gesture == GESTURE_UNKNOWN) {
      gesture_value = GESTURE_UNKNOWN;
  }
  if (gesture_value != GESTURE_UNKNOWN) {
          send_gesture_via_ble(gesture_value);
      }
}
static void do_inference(void)
{
  infer = false;
  // Copy the buffer into the model inputs
  memcpy(model_input->data.f, buf, sizeof(buf));

  TfLiteStatus invoke_status = interpreter->Invoke();

  if (invoke_status != kTfLiteOk) {
    app_log_error("Inference failed!\n");
    return;
  }

  // Analyze the results to obtain a prediction
  const model_output_t *output = (const model_output_t *)interpreter->output(0)->data.f;
  int gesture = GESTURE_UNKNOWN;
  if ((*output).gesture[0] > DETECTION_THRESHOLD) {
    gesture = GESTURE_DOWN;
  } else if ((*output).gesture[1] > DETECTION_THRESHOLD) {
    gesture = GESTURE_CIRCLE;
  } else if ((*output).gesture[2] > DETECTION_THRESHOLD) {
    gesture = GESTURE_UP;
  }
  // Produce an output
  handle_output(gesture);
}
void magic_wand_action(void)
{
  if (infer) {
    do_inference();
  }
}
