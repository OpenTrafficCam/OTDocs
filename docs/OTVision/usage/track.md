# track.py

## Synopsis

```text
track.py  [-p paths] [-c config] [--delete_input]
          [-d debug] [--sigma_l] [--sigma_h]
          [--sigma_iou] [--t_min] [--t_miss_max]
```

## Description

With the detected road users in one or more *otdet* files, you are ready to start the tracking of the road users. Therefore, **OTVision** provides the `track.py` script.

`-p <paths>, --paths=<paths>`

Path or list of paths to h264 (or other) video files or folders containing h264 video files.

### Optional

`-c <path_to_config_file>, --config=<path_to_config_file>`

Path to custom user [configuration](../configuration/) yaml file. If not provided, `user_config.otvision.yaml` is used.

`-o, --overwrite`

Overwrite existing output files. If not provided, `false` is used.

`-d, --debug`

Logging in debug mode. If not provided, `false` is used.

`--sigma_l=<float>`

Set sigma_l paramter for tracking. If not provided, the value from the given config file is used.

`--sigma_h=<float>`

Set sigma_l paramter for tracking. If not provided, the value from the given config file is used.

`--sigma_iou=<float>`

Set sigma_iou paramter for tracking. If not provided, the value from the given config file is used.

`--t_min=<int>`

Set t_min paramter for tracking. If not provided, the value from the given config file is used.

`--t_miss_max=<int>`

Set t_miss_max paramter for tracking. If not provided, the value from the given config file is used.
