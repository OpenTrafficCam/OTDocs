# Detect

## Synopsis

```text
python  detect.py   [-p paths] [--expected-duration] [-c config]
                    [-w weights] [--conf] [--iou] [--half] [--force]
                    [--overwrite] [--detect_start] [--detect_end]
```

## Description

If you have [converted](../usage/convert.md) your video files to one of the supported
file formats (`.avi`,`.mkv`,`.mov`,`.mp4`) or you already have such video files,
you are ready to start the detection of the road users in each video frame.

## Parameters

### paths (required)

!!! info "Filename convention"

    To prevent to set the start date and time in the config file for each individual
    video file, the current version of OTVision reads the start date and time from
    the video filenames.

    Video files recorded by OTCamera already contain the start date and time in the
    filename.

    In case you use OTVision to process video files recorded by
    **other camera systems**,
    please make sure that the filename of these files contain the start date and time
    in the following format:
    `YYYY-MM-DD_hh-mm-ss`

`-p "path/to/video files" "path/to/other video files"`

or

`--paths "path/to/video files" "path/to/other video files"`

One or multiple paths to video files or folders containing video files.

This parameter is required to run `detect.py`.
It has to be specified either using the CLI or in the
[configuration](../advanced_usage/configuration.md) YAML file.

### expected-duration

`--expected-duration <video duration [sec]>`

Expected duration of each video in seconds (must be all the same).
This parameter helps to avoid errors if some images are missing in a video.

This parameter is optional.
By default, the length of the video is read from the video file.

### config

`-c "path/to/config file"`

or

`--config "path/to/config file"`

Path to a custom user [configuration](../advanced_usage/configuration.md) YAML file.
Other parameters (including `paths`) are parsed from this configuration file.

This parameter is optional.
By default, the `user_config.otvision.yaml` in the root directory is read.
This also overrides the default values of all parameters.
If the `user_config.otvision.yaml` in the root directory is missing and no other
configuration file is specified, the default values of the parameters as
described below are used.

!!! warning

    Any parameter passed to the CLI will overwrite the respective parameter from
    the config file.

### weights

`-w <weights>`
or
`--weights <weights>`

Name of weights from PyTorch hub or path to weights file.

This parameter is optional and defaults to `yolov8s.pt`.

### conf

`--conf <float>`

The YOLOv8 model confidence threshold.
Should be a float value between zero and one.

The confidence threshold is the minimum confidence for a detection to be considered
a true detection (otherwise this detection will be ignored entirely).

This parameter is optional and defaults to `0.25`.

### iou

`--iou <float>`

The YOLOv8 model IOU threshold.
Should be a float value between zero and one.

The IOU threshold is the overlap threshold for areas of bounding boxes used in
non-maximum suppression to avoid duplicate detections.

This parameter is optional and defaults to `0.45`.

### half

`--half` to use half precision (FP16) to speed up detection.

`--no-half` to not use half precision.

This parameter is optional and defaults to `--no-half`.

!!! warning "Half precision only works for running detection on a GPU!"

### force

`--force` to force a reload of a YOLOv8 standard model from PyTorch hub instead of
using a cached model from previous detection runs.

`--no-force` to prevent forcing this reload.

This parameter is optional and defaults to `--no-force`.

### overwrite

`--overwrite` to overwrite existing `.otdet` files.

`--no-overwrite` to prevent overwriting existing `.otdet` files.

This parameter is optional and defaults to `--overwrite`.

### start-time

`--start-time` to specify the start time of the detection in `%Y-%m-%d_%H-%M-%S format.
If this parameter is not set, the start time will be parsed from the filename in the given format. The start time needs to be in the filename or given via this parameter.

This parameter is optional and defaults to `None`.

### detect-start

`--detect-start` to specify the start time of the detection in seconds.
Frames occurring before the specified start time will be excluded from the detection
process.

This parameter is optional and defaults to `None`.

### detect-end

`--detect-end` to specify the end time of the detection in seconds.
Frames occurring at or after the specified end time will be excluded from the detection
process.

This parameter is optional and defaults to `None`.
