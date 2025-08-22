# First Use

OTVision can be executed on a command-line (e.g., a Terminal on macOS
and Linux or the Command Prompt on Windows).

## The Command-Line Interface

We provide a command-line interface (CLI) to run the OTVision pipeline steps.
This documentation is written for using the Command Prompt on Windows or the integrated
terminals in Linux or macOS.

### Navigate to the OTVision root directory

Open a Terminal and navigate to the OTVision root folder.

```bash
cd "path/to/OTVision"
```

!!! note "Where is the OTVision root directory?"

    It's the folder you downloaded und unzipped.

    Maybe your OTVision root directory is called `OTVision-main` after unzipping,
    if you downloaded it from GitHub. This is the correct directory.

    Inside the OTVision root directory, there is another directory called `OTVision`
    (this child directory is the wrong directory).

### Build your command

Every command consists of three parts:

1.  Call `uv run` to run a Python script.
2.  Specify the pipeline step you want to run (`convert.py`, `detect.py` or `track.py`).
3.  Specify parameters for your script:

    For basic use, you only have to specify one parameter:
    The path(s) to the data you want to process.
    You can specify a file or folder path (in quotation marks) after the
    `-p` (or `--paths`) argument.

    ??? info "Some hints about specifying the paths"

        You can just drag a file or folder and drop them into the terminal.

        If you provide a path to a folder, every file within the folder will be
        processed.

        You can also provide multiple paths straight after one another
        (each in quotation marks).

    All other parameters are optional.
    They can also be set via arguments in the CLI (see "Usage" section) or
    [via a separate configuration file](../advanced_usage/configuration.md).

Have a look at the basic examples provided below.

## Convert

In case you have raw `.h264` videos (e.g., from OTCamera),
you need to convert them to a supported video format
(see [convert.py](../firstuse/#convert)) first.
Therefore, we provide the `convert.py` script.

To convert `.h264` videos, run the following command after activating the venv:

```text
uv run convert.py -p "path/to/your/h264 files"
```

where `path/to/h264 files` is either the path to a single h264 video file
or a folder containing multiple h264 video files.

Each converted video will by default be saved as a `.mp4` file in the same folder
with the same name as the input `.h264` file.

## Detect

If you have converted your video files to one of the accepted file formats
(`.avi`,`.mkv`,`.mov`,`.mp4`) or you already have your video files in one of those
formats,
you are ready to detect road users in each single frame of the video(s).
Therefore, we provide the `detect.py` script.

To detect video files, run the following command after activating your venv:

```text
uv run detect.py -p "path/to/your/video files" --expected-duration <video duration [sec]>
```

where

- `path/to/video files` is either the path to a single video file or a folder containing multiple video files and
- `video duration [sec]` is the duration of the individual videos.

!!! info "Naming convention for your video files"
    The filenames must contain the date and time of the start of the video in the
    following pattern:

    `YYYY-MM-DD_HH-MM-SS`

    Example: `path/to/my/video_2023-04-26_12-15-00.mp4`

    By specifying this, OTVision can link the detections and tracks in successive videos
    so that there are no 'cracks' through many individual videos.

    If you use [OTCamera](https://opentrafficcam.org/OTCamera/) to record your videos,
    the video files are automatically named according to this pattern.

    If you do not know the start date and time, you can simply use a dummy date
    (e.g. `1970-01-01_00-00-00`).

For each video file, the detected objects will be written to a separate `.otdet` file
in the same folder with the same name as the input video file.

## Track

With the detected road users in one or more `.otdet` files, you are ready to track the
road users over multiple frames of the video (or even over multiple consecutive videos).
Therefore, we provide the `track.py` script.

To track `.otdet` files, run the following command after activating your venv:

```text
uv run track.py -p "path/to/your/otdet files"
```

where `path/to/otdet files` is either the path to a single `.otdet` file
or a folder containing your `.otdet` files.
If you provide a folder, every `.otdet` file within the folder will be tracked.

For each video file, the tracks will be written to a separate `.ottrk` file
in the same folder as the input `.otdet` file.
