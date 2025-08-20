# Requirements

OTVision is designed to run on most modern operating systems (Windows, Linux and Mac).
However, a few prerequisites are required before installing OTVision.

## Hardware prerequisites

OTVision runs on modern desktops and laptops (e.g. Intel i5+ of the last few generations, AMD Zen chips or Apple Silicon
processors and 8 GB RAM).

If you want to detect road users in videos with OTVision on a regular basis, we
strongly recommend purchasing a powerful desktop computer or workstation
(>= 8+ cores, >= 16 GB RAM)
with a Nvidia graphics card (>= GeForce 10XX Series, better is usually faster).
Make sure that the Nvidia drivers as well as the
[NVidia CUDA Toolkit](#nvidia-cuda-optional)
are installed and up-to-date to get the best performance.

!!! info "Apple Neural Engine"

    Accelerated detection using the Apple Neural Engine is now supported.
    Detection on Apple silicon chips can utilize the Neural Engine for improved
    performance.

## Software prerequisites

### uv

OTVision uses `uv` as a fast Python package installer and resolver to manage dependencies.
The installation scripts automatically use `uv` to install Python packages from the
[Python Package Index](https://pypi.org/).

Additionally, `uv` can manage Python interpreters itself (download, install, and select specific versions),
so pre-installing Python is not required.
`uv` will get and use an appropriate Python interpreter automatically through the
required version defined in the `pyproject.toml` file.

Please refer to the [uv documentation](https://docs.astral.sh/uv/) for further
information on how to install `uv` on your system.

### ffmpeg

If you want to use videos recorded by [OTCamera](/OTCamera) with OTVision,
you need to convert the videos to .mp4 files first.
For the conversion, we use the Open Source software ffmpeg.

Before using the `convert.py` script, make sure that ffmpeg is installed and available on the whole system:

=== "Windows"

    To install *ffmpeg* on your Windows system, please perform the following steps:

    1. Download the file `ffmpeg-git-full.7z` from
        [gyan.dev](https://www.gyan.dev/ffmpeg/builds/).
    2. Unzip this file by using any file archiver such as 7zip in a folder of
        your choice (e.g., `C:\ffmpeg`).
    3. Now, open a Command Prompt with administrator privileges and set the environment path variable for ffmpeg:

        ```bat
        setx /m PATH "path_to_your_ffmpeg_folder\bin;%PATH%"
        ```

        where `path_to_your_ffmpeg_folder` represents the folder that you have *ffmpeg*
            unzipped in.

        If you unzipped to `C:\ffmpeg`, for example:

        ```bat
        setx /m PATH "C:\ffmpeg\bin;%PATH%"
        ```


    4. Restart your computer and verify the installation by running

        ```text
        ffmpeg -version
        ```

=== "Linux"

    #### Ubuntu repositories

    If you use Ubuntu, you can install ffmpeg using the official Ubuntu repositories.

    ```
    sudo apt install ffmpeg
    ```

    #### Manual installation

    For the manual installation of ffmpeg on Linux or if you use another
    distribution, please refer to the instructions on the
    [developers website](https://ffmpeg.org/download.html).

=== "macOS"

    #### Homebrew

    For the installation using Homebrew, use the following command in the terminal:

    ```text
    brew install ffmpeg
    ```

    #### Manual install

    For the manual installation of ffmpeg on macOS, please refer to the instructions
    on the [developers website](https://ffmpeg.org/download.html).

### Nvidia CUDA (optional)

If you intend to use OTVision on a Windows or Linux PC with a modern
Nvidia graphics card, download and install version **12.8** of the
[NVIDIA Cuda Toolkit](https://developer.nvidia.com/cuda-toolkit-archive).
