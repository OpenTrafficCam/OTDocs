# detect.py

## Synopsis

```text
python  detect.py   [-p paths] [-c config] [-w weights]
                    [--conf] [--iou] [--chunksize] [--half] [--force]
                    [-o overwrite]
```

## Description

If you have [converted](../usage/convert.md) your video files to one of the supported
file formats (`.avi`,`.mkv`,`.mov`,`.mp4`) or you already have such video files,
you are ready to start the detection of the road users in the video´s frames.

## Parameters

### paths (required)

`-p "path/to/video files" "path/to/other video files"`

or

`--paths "path/to/video files" "path/to/other video files"`

One or multiple paths to video files or folders containing video files.

This parameter is required to run the `detect.py` script.
It has to be specified either using the CLI or in the
[configuration](../configuration/) yaml file.

### config

`-c "path/to/config file"`

or

`--config "path/to/config file"`

Path to a custom user [configuration](../configuration/) yaml file.
Other parameters (including `paths`) are parsed from this configuration file.

This parameter is optional.
If not provided, default values are used for the other parameters.

!!! warning
    Any other parameters passed to the CLI will overwrite respective parameters from
    the config file.

### weights

`-w <weights>`
or
`--weights <weights>`

Name of weights from PyTorch hub or Path to weights file.

This parameter is optional and defaults to `YOLOv5s.pt`.

### conf

`--conf <confidence>`

The YOLOv5 models confidence threshold.
Should be a float value between zero and one.

The confidence threshold is the minimum confidence for a detectiob to be considered
a true detection (otherwise this detection will be ignored entirely).

This parameter is optional and defaults to `0.25`.

### iou

`--iou <iou>`

The YOLOv5 models IOU threshold.
Should be a float value between zero and one.

The IOU threshold is the overlap threshold for areas of bounding boxes used in
non-maximum suppression to avoid duplicate detections.

This parameter is optional and defaults to `0.45`.

### chunksize

`--chunksize <chunksize>`

The number of frames of a video to be detect by YOLOv5 in one iteration.
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
