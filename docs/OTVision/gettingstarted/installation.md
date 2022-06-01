# Installation

## Install Python 3.9

If not done yet, install the latest 64-bit version of Python 3.9 via Windows installer from [www.python.org/downloads/](https://www.python.org/downloads/) as follows (Python 3.8.x should also work, the 32-bit version is not supported):

??? help "What if I already have another Python version installed?"

    In addition, also install Python 3.9. The last installed Python will automatically be the default Python interpreter of your system.

    On Windows, it is also possible to change the default Python interpreter by changing the order of the system-wide environment variables (move Python39 and Python39\Scripts to the top, see animation below).

    This is necessary e.g. if you have already installed Python 3.9, but another Python version is your default because you installed it in the meantime (e.g. 3.10).

    ![Change default Python](installation/change_default_python_version_win10.gif)

![Download Python](installation/Download_Python.PNG)

![Install Python 1](installation/Install_Python_1.PNG)

![Install Python 2](installation/Install_Python_2.PNG)

![Install Python 3](installation/Install_Python_3.PNG)

## Install NVIDIA Cuda 11.0

> If you have a modern NVidia graphics card.

If you intend to use OTVision on a PC with a modern NVidia graphics card, download and install the latest version of the [NVIDIA Cuda Toolkit](https://developer.nvidia.com/cuda-downloads) with default settings from the NVIDIA toolkit.

## Install OTVision

1. Download and unzip the latest version of [OTVision](https://github.com/OpenTrafficCam/OTVision/archive/refs/heads/master.zip) from Github.

2. In the unzipped folder double-click the "install_win-py39.bat" (or "install_win-py38.bat" respectively) and wait until the installation of the dependencies is complete.

## To run OTVision

... double click the "OTVision.bat" to run the Software via graphical user interface.

## If you encounter problems

Maybe you also have to manually install Microsoft Visual C++ 14.0 or greater from the [Visual Studio Build Tools](https://visualstudio.microsoft.com/visual-cpp-build-tools/).

In case of further problems please [open an issue](https://github.com/OpenTrafficCam/OTVision/issues/new) in the OTVision repository on Github.

We also welcome code contributions (e.g. fixing bugs or adding features) from other programmers by forking the repository and creating a pull request.
Please check the [contribute section](https://opentrafficcam.org/contribute/) of this documentation first.
