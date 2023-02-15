# Requirements

## Hardware prerequisites

OTVision runs on modern 64 bit desktops and laptops (e.g. i5 processor and 8 GB RAM). Apple Silicon processors can also be used to run OTVision. However, they are not supported natively and therefore might not perfrom at their maximum.

If you want to detect road users in videos with OTVision on a regular basis, we strongly recommend purchasing a powerful desktop computer (>= i7, >= 64 GB RAM) with a NVidia graphics card (>= GeForce 30XX Series). Make sure that the drivers of the graphics card are installed to use CUDA with OTVision to get the best performance.

## Software prerequisites

OTVision is completely based on Open Source *Python* packages. Thus, it runs on Windows, MacOS and Linux systems after setting up the environment correctly. Consequently, a recent version of *Python* (currently supported: *Python 3.10*) needs to be installed on the system. An instruction how to do that on a Windows system can be found below.

If you want to use videos recorded by [OTCamera](OTCamera/index) with OTVision, you need to convert the videos to .mp4 files first. For the convertion, we use the Open Source software *ffmpeg*.

To achieve the maximum performance on systems with a NVidia graphics card, the CUDA drivers have to be installed correctly. A detailed instruction how to do that on a Windows system can be found below.

### Install Python 3.10

=== "Windows"

    If not done yet, install the latest 64-bit version of Python 3.10 via Windows installer from [www.python.org/downloads/](https://www.python.org/downloads/).

    ??? help "What if I already have another Python version installed?"

        In addition, also install Python 3.10. The last installed Python will automatically be the default Python interpreter of your system.

        On Windows, it is also possible to change the default Python interpreter by changing the order of the system-wide environment variables (move Python310 and Python310\Scripts to the top, see animation below).

        This is necessary e.g. if you have already installed Python 3.10, but another Python version is your default because you installed it in the meantime (e.g. 3.11).

        ![Change default Python](installation/change_default_python_version_win10.gif)

=== "Linux"

    Depending on the Linux distribution you are using, Python 3.10 might not be the pre-installed version. In that case, install Python 3.10 manually using additional sources. Since the sources might differ depending on the Linux distribution you are using, we kindly ask you to use a search engine for a detailed instruction on how to install Python 3.10 manually for your distribution. In any case, please make sure that you also have the python virtual environment package `python3.10-venv` installed.

=== "MacOS"

    We recommend the installation using Homebrew using the command `$ brew install python` in the terminal.

### Install ffmpeg

For the conversion of video files recorded by OTCamera, we use the Open Source software *ffmpeg*. Before using the `convert.py` script, make sure that *ffmpeg* is installed on your system.

=== "Windows"

    To install *ffmpeg* on your Windows system, please perform the following steps:
    
    1. Download the file `ffmpeg-git-full.7z` from [gyan.dev](https://www.gyan.dev/ffmpeg/builds/).  
    2. Unzip this file by using any file archiver such as Winrar or 7z in the folder of your choice (e.g., `C:\ffmpeg`).
    3. Now, run cmd as an administrator and set the environment path variable for ffmpeg by running 
    
        `$ setx /m PATH "path_to_your_ffmpeg_folder\bin;%PATH%"`
        
        where `path_to_your_ffmpeg_folder` represents the folder that you have *ffmpeg* unzipped in.
    
    4. Restart your computer and verify the installation by running `$ ffmpeg -version`

=== "Linux"

    #### Ubuntu repositories

    If you use Ubuntu, you can install *ffmpeg* using the official Ubuntu repositories.

    ```
    $ sudo apt update
    $ sudo apt install ffmpeg
    ``` 

    #### Manual install

    For the manual installation of *ffmpeg* on Linux or if you use another Linux distribution than Ubuntu, please refer to the instructions on the [developers website](https://ffmpeg.org/download.html).

=== "MacOS"

    #### Homebrew

    For the installation using Homebrew, use the command `$ brew install ffmpeg` in the terminal.

    #### Manual install

    For the manual installation of *ffmpeg* on MacOS, please refer to the instructions on the [developers website](https://ffmpeg.org/download.html).

### Optional: Install NVIDIA Cuda 11.0

> If you have a modern NVidia graphics card.

If you intend to use OTVision on a PC with a modern NVidia graphics card, download and install the latest version of the [NVIDIA Cuda Toolkit](https://developer.nvidia.com/cuda-downloads) with default settings from the NVIDIA toolkit.
