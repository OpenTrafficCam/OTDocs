# First Use

> Lets **try** it out

**OTVision** can be executed from any command-line tool (e.g., Terminal, PowerShell). It is possible to either execute the whole pipeline (convert -> detect -> track) with one command (TODO) or execute the single parts individually.

The [configuration](../configuration) is stored in a configuration file (yaml), which can be referenced to when executing **OTVision**.

A graphical user interface will be provided in a later stage of development.

## Input data

In the current version, **OTVision** is tested with the following image and video file formats:

| File type   | File format                          |
| ----------- | ------------------------------------ |
| Images      | *\*.jpg,  \*.jpeg, \*.jpg*           |
| Videos      | *\*.avi, \*.mkv, \*.m4v, \*.mov, \*.mp4, \*.mpg, \*.mpeg, \*.wmv* |

If you want to process videos recorded with **OTCamera**, you need to convert the video files from h264 to a file format that is accepted by OTVision (standard setting: mp4). This can be done executing the `convert.py`script.

## Convert

In case you have raw videos (e.g., h264 from **OTCamera**), you need to convert the videos to the supported video formats (see [**Input Data**](../firstuse/#input-data)) first. Therefore, **OTVision** provides the `convert.py` script.

In order to start the video conversion, navigate to the OTVision directory in your command-line tool and excute the following command:

``` text
    python convert.py -p "your_file_path"
```

where `your_file_path` is either the path to a single h264 video file or a folder including h264 video files. If you provide a folder, every h264 video file within the folder will be converted.

## Detect

If you have converted your video files to one of the accepted file formats or you already have your video files in the accepted format of OTVision (see [**Input Data**](../firstuse/#input-data)), you are ready to start the detection of the road users in the single video frames. Therefore, **OTVision** provides the `detect.py` script.

In order to start the detection, navigate to the OTVision directory in your command-line tool and excute the following command:

``` text
    python detect.py -p "your_file_path"
```

where `your_file_path` is either the path to a single video file or a folder including your video files. If you provide a folder, every video file within the folder will be converted.

The detected objects will be saved in an *otdet* file. For each video file, an *otdet* file is created with the same name as the video file.

## Track

With the detected road users in one or more *otdet* files, you are ready to start the tracking of the road users. Therefore, **OTVision** provides the `track.py` script.

In order to start the tracking, navigate to the OTVision directory in your command-line tool and excute the following command:

``` text
    python track.py -p "your_file_path"
```

where `your_file_path` is either the path to a single *otdet* file or a folder including your *otdet* files. If you provide a folder, every *otdet* file within the folder will be tracked.

The trajecotries of the raod users will be saved in an *ottrk* file. For each *otdet* file, an *otdet* file is created with the same name as the video file and the *otdet* file.

## Run the Pipeline

!!! info "Coming soon"
    Unfortunately, this functionaility is not tested yet.
