# Get started

## Hardware prerequisites

Both OTVision and OTAnalytics run on modern 64 bit Windows 10 desktops and laptops (e.g. i5 processor and 8 GB RAM).

However, if you want to detect road users in videos with OTVision on a regular basis, we strongly recommend purchasing a powerful desktop computer (>= i7, >= 64 GB RAM) with a modern NVidia graphics card (>= GeForce 3070). Make sure that the drivers of the graphics card are installed.

## Install Python 3.9
Install the 64-bit version Python 3.9.x via Windows installer from www.python.org/downloads/ as follows (Python 3.6.x to 3.8.x should also work, the 32-bit version is not supported):

![Download Python](Download_Python.PNG)

![Install Python 1](Install_Python_1.PNG)

![Install Python 2](Install_Python_2.PNG)

![Install Python 3](Install_Python_3.PNG)

## Install NVIDIA Cuda 11.0

> If you have a modern NVidia graphics card.

[Download and install version 11.0 of the NVIDIA Cuda Toolkit]([Download](https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_451.82_win10.exe)) with default settings from the NVDIA toolkit [archive](https://developer.nvidia.com/cuda-toolkit-archive).

## Install Visual Studio Build Tools 2017
To get Microsof Visual C++ 14.0 or greater [download and install "Microsoft C++ Build Tools"](https://visualstudio.microsoft.com/visual-cpp-build-tools/)

## Install OTVision and OTAnalytics

1. Download and unzip the latest versions of [OTVision](https://github.com/OpenTrafficCam/OTVision/archive/refs/heads/master.zip) and [OTAnalytics](https://github.com/OpenTrafficCam/OTAnalytics/archive/refs/heads/master.zip) from Github.

2. In both folders Double-click the "install.bat" and wait until the installation of the dependencies is complete.

## To run OTVision and OTAnalytics

... double click the "OTVision.bat" or the "OTAnalytics.bat" to run the Software via graphical user interface.

## If you encounter problems

... open an issue in the OTVision or OTAnalytics repositories on Github.
