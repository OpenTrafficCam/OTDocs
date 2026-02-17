# Configuration

OTCamera is configured using a YAML configuration file on the Raspberry Pi.
The file is located at `~/user_config.yaml`.
Any settings not specified in the file will use sensible defaults.

An example configuration file with all available options can be found in the
[OTCamera repository](https://github.com/OpenTrafficCam/OTCamera/blob/master/user_config.example.yaml).

The configuration file is organized into the following sections:

## Recording

Controls when and how long OTCamera records videos.

| Parameter         | Default | Description                                                 |
| ----------------- | ------- | ----------------------------------------------------------- |
| `start_hour`      | 6       | Hour to start recording (0-23)                              |
| `end_hour`        | 22      | Hour to stop recording (0-23)                               |
| `interval_length` | 15      | Minutes per video file before splitting                     |
| `num_intervals`   | 0       | Number of intervals to record (0 = unlimited)               |
| `min_free_space`  | 1       | Minimum free disk space in GB before old videos are deleted |

## Camera

Settings for the camera sensor.

| Parameter           | Default        | Description                                                |
| ------------------- | -------------- | ---------------------------------------------------------- |
| `fps`               | 20             | Frames per second (10-20 recommended)                      |
| `resolution.width`  | 1640           | Internal camera resolution width                           |
| `resolution.height` | 1232           | Internal camera resolution height                          |
| `exposure_mode`     | `nightpreview` | Analog/digital gain control mode                           |
| `drc_strength`      | `high`         | Dynamic range compression strength                         |
| `rotation`          | 180            | Image rotation in degrees                                  |
| `awb_mode`          | `greyworld`    | Auto white balance mode (use `greyworld` for NoIR cameras) |
| `meter_mode`        | `average`      | Metering mode for exposure adjustment                      |

## Video

Settings for the encoded video output files.

| Parameter           | Default     | Description                      |
| ------------------- | ----------- | -------------------------------- |
| `dir`               | `~/videos/` | Directory where videos are saved |
| `format`            | `h264`      | Video encoding format            |
| `resolution.width`  | 800         | Output video resolution width    |
| `resolution.height` | 600         | Output video resolution height   |
| `encoder.profile`   | `high`      | H.264 profile                    |
| `encoder.level`     | `4`         | H.264 level                      |
| `encoder.bitrate`   | 600000      | Bitrate in bits per second       |
| `encoder.quality`   | 30          | Encoding quality parameter       |

## Preview

Controls the preview image shown on the web interface.

| Parameter  | Default | Description                           |
| ---------- | ------- | ------------------------------------- |
| `interval` | 5       | Seconds between preview image updates |
| `format`   | `jpeg`  | Preview image format                  |

## Wi-Fi

| Parameter | Default | Description                                                     |
| --------- | ------- | --------------------------------------------------------------- |
| `delay`   | 900     | Seconds before Wi-Fi is turned off after the switch is disabled |

## Feature Toggles

Several optional features can be enabled or disabled:

| Section        | Parameter | Default | Description                        |
| -------------- | --------- | ------- | ---------------------------------- |
| `leds`         | `enable`  | false   | Enable status LEDs                 |
| `buttons`      | `enable`  | false   | Enable hardware buttons            |
| `debug_mode`   | `enable`  | false   | Enable additional debug logging    |
| `relay_server` | `enable`  | false   | Enable SSH relay server connection |

## Example

A minimal configuration that adjusts the recording schedule and video resolution:

```yaml
---
recording:
  start_hour: 7
  end_hour: 20

video:
  resolution:
    width: 1280
    height: 720
```
