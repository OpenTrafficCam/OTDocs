# Buttons and LEDs

OTCamera can be controlled using four switches. Its operating status is indicated by 3 LEDs.

The switches from left to right are:

- Reset
- Boot
- Wi-Fi
- 24/7

The three LEDs correspond to the rightmost three switches.

## Reset Switch

The Reset switch functions as a constant power supply for the Raspberry Pi.
By switching it off the power supply to the Raspberry Pi is interrupted.
Therefore, it is recommended to keep the Reset switch always turned on unless there is a problem with the Raspberry Pi.

!!! warning "Potential Data Loss"

    When the Reset switch is pressed, the Raspberry Pi turns off immediately but is not shut down properly.
    This can potentially affect the file system, and the SD card may become unreadable.

The other three switches are used for normal operation.

## Boot Switch and LED

The Boot switch is used to turn the system on and off.
When it is turned on, the green LED below the switch remains continuously lit.

Once the Raspberry Pi has finished booting and OTCamera has been launched, the green LED starts blinking.
Blinking twice means that an external power source is connected via USB.
If it blinks only once, the system is running on internal battery power.

After OTCamera has finished booting, the other two LEDs also start blinking (if the Wi-Fi and 24/7 switches are turned on).

## Wi-Fi Switch and LED

The Wi-Fi switch controls the Wi-Fi module of the Raspberry Pi.
This includes both the connection to a Wi-Fi network and the Wi-Fi access point of the OTCamera itself.

When the switch is turned off, the Wi-Fi is turned off after a configurable time period (default is 15 minutes).
This allows to turn off the switch before mounting OTCamera in the field.
Accessing the web interface is still possible for a few minutes.
This way, the camera can be safely mounted and aligned.

When the Wi-Fi is permanently enabled, the Wi-Fi LED blinks once every 5 seconds.
The Wi-Fi LED blinks once per second when the timer is active.
Once the Wi-Fi is turned off, the Wi-Fi LED stops blinking and turns off completely.

If the Wi-Fi switch is already turned off when OTCamera starts up, the Wi-Fi is immediately turned off after the start (without a timer).

## 24/7 Switch and Record LED

The 24/7 switch controls when OTCamera records videos.
If the switch is turned on, recording is continuous.
If the switch is turned off, recording only occurs between a configured start and end time (default is from 06:00 AM to 10:00 PM).

The LED below the switch indicates whether the camera is currently recording.
It should blink every 5 seconds.
When the LED blinks, a new preview for the web interface is also generated.

## LED Blink Patterns

| LED            | Blink Pattern    | Description                                                                                             |
| -------------- | ---------------- | ------------------------------------------------------------------------------------------------------- |
| Boot (green)   | `__________`     | OTCamera powered off.                                                                                   |
| Boot (green)   | `**********`     | OTCamera is booting.                                                                                    |
| Boot (green)   | `*_*_______`     | OTCamera is running and connected to external power (USB).                                              |
| Boot (green)   | `*_________`     | OTCamera is running and **not** connected to external power (USB).                                      |
| Wi-Fi (yellow) | `__________`     | Wi-Fi and Access Point (AP) are turned off.                                                             |
| Wi-Fi (yellow) | `*_________`     | Wi-Fi and AP are turned on.                                                                             |
| Wi-Fi (yellow) | `*_*_*_*_*_`     | Wi-Fi will turn off after a specific timer period (default is 15 minutes).                              |
| Record (red)   | `*_________`     | OTCamera is currently recording videos.                                                                 |
| Record (red)   | `__________`     | OTCamera is **not** recording videos, probably because the current time is outside the recording timer. |
|                | `_`: off `*`: on |                                                                                                         |
