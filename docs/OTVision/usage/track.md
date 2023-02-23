# track.py

## Synopsis

```text
python  track.py    [-p paths] [-c config]
                    [--sigma_l] [--sigma_h] [--sigma_iou] [--t_min] [--t_miss_max]
                    [-o overwrite]
```

## Description

With the detected road users in one or more `.otdet` files, you are ready to start
tracking road users over successice frames and even videos.

## Parameters

### paths

`-p "path/to/otdet files" "path/to/other otdet files"`

or

`--paths "path/to/otdet files" "path/to/other otdet files"`

One or multiple paths to `.otdet` files or folders containing `.otdet` files.

This parameter is required to run the `track.py` script.
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

### sigma_l

`--sigma_l <float>`

The lower confidence threshold for the IOU tracker.
Detections with confidences below `sigma_l` are not even considered for tracking.

This parameter is optional and defaults to `0.27`.

### sigma_h

`--sigma_h <float>`

The upper confidence threshold for the IOU tracker.
Tracks are only considered as valid if they contain at least one detection with
a confidence above sigma_h.

This parameter is optional and defaults to `0.42`.

### sigma_iou

`--sigma_iou <float>`

Intersection-Over-Union threshold for the IOU tracker.
Two detections in subsequent frames are considered to belong to the same track if
their IOU value exceeds sigma_iou and this is the highest IOU of all possible
combinations of detections.

This parameter is optional and defaults to `0.38`.

### t_min

`--t_min <int>`

Minimum number of detections to count as a valid track.
All tracks with less detections will be dissmissed.

This parameter is optional and defaults to `5`.

### t_miss_max

`--t_miss_max <int>`

Maximum number of missed detections before continuing a track.
If more detections are missing, the track will not be continued.

This parameter is optional and defaults to `51`.

### overwrite

`-o` or `--overwrite` to overwrite existing `.ottrk` files.

`-no-o` or `--no-overwrite` to prevent overwriting existing `.ottrk` files.

This parameter is optional and defaults to `--overwrite`.
