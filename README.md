This legacy pre-HIDL HAL reads local kernel IIO devices through the shared
native libiio backend. It is not selected by the current products.

Current lunch targets use `sensors: native` and
`android.hardware.sensors@aidl-service.intel`, implemented under
`vendor/intel/hardware/interfaces/sensors/aidl`.

Check `/sys/bus/iio/devices/iio:device*/name` and `dumpsys sensorservice`
on the Android device. Sensors require their kernel drivers to be loaded.
