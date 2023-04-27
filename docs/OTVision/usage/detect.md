# Detect

## Synopsis

```text
python  detect.py   [-p paths] [-c config] [-w weights]
                    [--conf] [--iou] [--chunksize] [--half] [--force]
                    [-o overwrite]
```

## Description

If you have [converted](../usage/convert.md) your video files to one of the supported
file formats (`.avi`,`.mkv`,`.mov`,`.mp4`) or you already have such video files,
you are ready to start the detection of the road users in each video frame.

## Parameters

### paths (required)

!!! info "Filename convention"
  
    To prevent to set the start date and time in the config file for each indivdual
    video file, the current version of **OTVision** reads the start date and time from
    the video filenames.

    Video files recorded by **OTCamera** already contain the start date and time in the
    filename. 

    In case you use **OTVision** to process video files recorded by
    **other camera systems**,
    please make sure that the filename of these files contain the start date and time
    in the following format:
    `YYYY-MM-TT_hh-mm-ss`

`-p "path/to/video files" "path/to/other video files"`

or

`--paths "path/to/video files" "path/to/other video files"`

One or multiple paths to video files or folders containing video files.

This parameter is required to run `detect.py`.
It has to be specified either using the CLI or in the
[configuration](../advanced_usage/configuration.md) yaml file.

### config

`-c "path/to/config file"`

or

`--config "path/to/config file"`

Path to a custom user [configuration](../advanced_usage/configuration.md) yaml file.
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

This parameter is optional and defaults to `YOLOv5s.pt`.

### conf

`--conf <float>`

The YOLOv5 model confidence threshold.
Should be a float value between zero and one.

The confidence threshold is the minimum confidence for a detection to be considered
a true detection (otherwise this detection will be ignored entirely).

This parameter is optional and defaults to `0.25`.

### iou

`--iou <float>`

The YOLOv5 model IOU threshold.
Should be a float value between zero and one.

The IOU threshold is the overlap threshold for areas of bounding boxes used in
non-maximum suppression to avoid duplicate detections.

This parameter is optional and defaults to `0.45`.

### chunksize

`--chunksize <int>`

The number of frames of a video to be detected by YOLOv5 in one iteration.
Should be an integer above zero.

This parameter is optional and defaults to `1`.

### half

`--half` to use half precision (FP16) to speed up detection.

`--no-half` to not use half precision.

This parameter is optional and defaults to `--no-half`.

!!! warning "Half precision only works for running detection on a GPU!"

### force

`--force` to force a reload of a YOLOv5 standard model from PyTorch hub instead of
using a cached model from previous detection runs.

`--no-force` to prevent forcing this reload.

This parameter is optional and defaults to `--no-force`.

### overwrite

`-o` or `--overwrite` to overwrite existing `.otdet` files.

`-no-o` or `--no-overwrite` to prevent overwriting existing `.otdet` files.

This parameter is optional and defaults to `--overwrite`.
