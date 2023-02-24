# convert.py

## Synopsis

```bash
python  convert.py  [-p paths] [-c config]
                    [--fps_from_filename] [--input_fps]
                    [--delete_input] [-o overwrite]
```

## Description

In case you have raw `.h264` videos (e.g. from **OTCamera**), you need to convert
the videos to a supported video format.

As `.h264` does not include metadata, the frame rate of the video has to be
either read from the filename or specified by the user.

We suggest converting to `.mp4` (the default output file type).

## Parameters

### paths (required)

`-p "path/to/h264 files" "path/to/other h264 files"`

or

`--paths "path/to/h264 files" "path/to/other h264 files"`

One or multiple paths to `.h264` files or folders containing `.h264` video files.

This parameter is required to run the `convert.py` script.
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

### fps_from_filename

`--fps_from_filename` to parse the video frame rates from the input `.h264` filenames.

- In this case the frame rate of each input `.h264` file has to be specified in
the filename using the following pattern: `_FR<fps>_` (where `fps` is the frame rate)
- An example would be `_FR20_` in the following filename:
    `OTCamera01_FR20_2023-01-01_12-15-00.h264`
- In this case, [`input_fps`](#input_fps) will be ignored.

This parameter is used by default if `--no-fps_from_filename` and
`--input_fps` are not specified.

### no_fps_from_filename

Use `--no-fps_from_filename` to prevent parsing the video frame rates from the
input `.h264` filenames.

- In this case, an [`input_fps`](#input_fps) has to be specified.

### input_fps

`--input_fps <int>` to set the frame rate for all `.h264` files.

- `input_fps` should be an integer value above zero.
- E.g. if the input `.h264` have been recorded at 20 frames per second, specify this
parameter as follows:
`--input_fps 20`

If `--fps_from_filename` is used, `input_fps` will be ignored.

This parameter is optional and defaults to `20`.

### overwrite

`-o` or `--overwrite` to overwrite existing `.mp4` files.

`-no-o` or `--no-overwrite` to prevent overwriting existing `.mp4` files.

This parameter is optional and defaults to `--overwrite`.

### delete input

`--delete_input` to delete input `.h264` files after conversion to `.mp4`
to save disk space.

`--no-delete_input` to keep input `.h264` files after conversion to `.mp4`.

This parameter is optional and defaults to `--no-delete_input`.
