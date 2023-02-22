# Basic Use

> Lets **try** it out

**OTVision** can be executed from any command-line tool (e.g., the Terminal on macOS
and Linux or the Command Prompt on Windows).

## The Command Line Interface

We provide a Command Line Interface (CLI) to run the OTVision pipeline or parts of it.
This documentation is written for using the Command Prompt on Windows or the integrated
terminals in Linux or macOS.

### Navigate to the OTVision root directory

```bash
cd "path/to/OTVision"
```

!!! info "On macOS you can open a terminal by right click on the OTVision directory"

!!! warning "Don´t choose the wrong directory"

    Maybe your OTVision root directory is called `OTVision-main`,
    if you downloaded it from Github (this is the correct directory).

    Inside the OTVision root directory, there is another directory called `OTVision`
    (this child directory is the wrong directory in every case)

### Activate virtual environment

Before using OTVision, you have to activate the virtual environment that was created
by running the [installation scripts](../installation):

=== "Windows command prompt"

    ```cmd 
    venv\Scripts\activate
    ``` 

=== "Linux / macOS terminal"

    ```bash
    source venv/bin/activate
    ```

Now you should be inside the virtual environment, indicated by the `(venv)`
in braces in front of your current working directory in the terminal.

### Build your command

Every command consists of three parts:

1. Invoke the Python interpreter with `python`
1. Specify the script you want to run (`convert.py`, `detect.py` or `track.py`).
1. Specify the parameters for your script:

    For basic use, you only have to specify one parameter:
    The path(s) to the data you want to process.
    You can specify a file or folder path (in quotation marks) after the
    `-p` (or `--paths`) tag.

    ??? info "Some hints about specifying the paths"

        You can just drag a file or folder and drop them into the terminal.
        
        If you provide a path to a folder, every file within the folder will be
        processed.
        
        You can also provide multiple paths straight after one another
        (each in quotation marks).

    All other parameters are optional.
    They can also be set via tags in the CLI (see "Usage" section) or
    [via a separate configuration file](../configuration).

Have a look at the basic examples provided below.

## Convert

In case you have raw videos `.h264` videos (e.g. from **OTCamera**),
you need to convert them to the supported video formats
(see [convert.py](../firstuse/#detect)) first.
Therefore, we provide the `convert.py` script.

In order to convert the `.h264` videos, run the following command:

``` text
python convert.py -p "path/to/your/h264 files"
```

where `path/to/your/h264 files` is either the path to a single h264 video file
or a folder including h264 video files.

Each converted video will by default be saved as a `.mp4` file in the same folder
as the input `.h264` file.

## Detect

If you have converted your video files to one of the accepted file formats
(`.avi`,`.mkv`,`.mov`,`.mp4`) or you already have your video files in one of those
formats,
you are ready to detect of the road users in the single frames of each video.
Therefore, we provide the `detect.py` script.

In order to start the detection, run the following command:

``` text
python detect.py -p "path/to/your/video files"
```

where `path/to/your/video files` is either the path to a single video file or a folder
including your video files.

For each video file, the detected objects will be written to a separate `.otdet` file
in the same folder as the input video file.

## Track

With the detected road users in one or more *otdet* files, you are ready to track the
road users over multiple frames of the video.
Therefore, we provide the `track.py` script.

In order to start tracking, run the following command:

``` text
python track.py -p "path/to/your/otdet files"
```

where `path/to/your/otdet files` is either the path to a single `.otdet` file
or a folder including your `.otdet` files.
If you provide a folder, every *otdet* file within the folder will be tracked.

For each video file, the tracks will be written to a separate `.ottrk` file
in the same folder as the input `.otdet` file.

## Run the Pipeline

!!! info "Coming soon"
    Unfortunately, this functionaility is not tested yet.
