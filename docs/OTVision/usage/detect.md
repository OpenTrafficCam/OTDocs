# detect.py

## Synopsis

```text
detect.py  [-p paths] [-c config] [-f filetypes]
           [-w weights] [-o overwrite] [-d debug]
```

## Description

If you have converted your video files to one of the accepted file formats or you already have your video files in the accepted format of OTVision (see [**Input Data**](../firstuse/#input-data)), you are ready to start the detection of the road users in the single video frames. Therefore, **OTVision** provides the `detect.py` script.

`-p <paths>, --paths=<paths>`

Path or list of paths to mp4 (or other) video files or folders containing mp4 video files.

### Optional

`-c <path_to_config_file>, --config=<path_to_config_file>`

Path to custom user [configuration](../configuration/) yaml file. If not provided, `user_config.otvision.yaml` is used.

`-f <filetypes>, --filetypes=<filetypes>`

File types of files in folders to select for detection. If not provided, `mp4` is used.

`-w <weights>, --weights=<weights>`

Name of weights from PyTorch hub or Path to weights file. If not provided, the standard `YOLOv5s.pt` weights are used.

`-o, --overwrite`

Overwrite existing output files. If not provided, `false` is used.

`-d, --debug`

Logging in debug mode. If not provided, `false` is used.
