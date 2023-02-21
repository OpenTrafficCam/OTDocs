# convert.py

## Synopsis

```text
convert.py  [-p paths] [-c config] [--delete_input]
            [-o overwrite] [-d debug]
```

## Description

In case you have raw videos (e.g., h264 from **OTCamera**), you need to convert the videos to the supported video formats (see [**Input Data**](../firstuse/#input-data)) first. Therefore, **OTVision** provides the `convert.py` script.

`-p <paths>, --paths=<paths>`

&emsp;Path or list of paths to h264 (or other) video files or folders containing h264 video files.

OPTIONAL:

`-c <path_to_config_file>, --config=<path_to_config_file>`

&emsp;Path to custom user [configuration](../configuration/) yaml file. If not provided, `user_config.otvision.yaml` is used.

`--delete_input`

&emsp;Delete input files after convert. If not provided, `false` is used.

`-o, --overwrite`

&emsp;verwrite existing output files. If not provided, `false` is used.

`-d, --debug`

&emsp;Logging in debug mode. If not provided, `false` is used.