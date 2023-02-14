# Requirements

## Hardware prerequisites

OTVision runs on modern 64 bit desktops and laptops (e.g. i5 processor and 8 GB RAM). Apple Silicon processors can also be used to run OTVision. However, they are not supported natively and therefore might not perfrom at their maximum.

If you want to detect road users in videos with OTVision on a regular basis, we strongly recommend purchasing a powerful desktop computer (>= i7, >= 64 GB RAM) with a NVidia graphics card (>= GeForce 30XX Series). Make sure that the drivers of the graphics card are installed to use CUDA with OTVision to get the best performance.

## Software prerequisites

OTVision is completely based on Open Source Python packages. Thus, it runs on Windows, MacOS and Linux systems after setting up the environment correctly. Consequently, a recent version of Python (currently supported: Python 3.9) needs to be installed on the system. An instruction how to do that on a Windows system can be found below.

To achieve the maximum performance on systems with a NVidia graphics card, the CUDA drivers have to be installed correctly. A detailed instruction how to do that on a Windows system can be found below.

### Install Python 3.10

If not done yet, install the latest 64-bit version of Python 3.10 via Windows installer from [www.python.org/downloads/](https://www.python.org/downloads/).

??? help "What if I already have another Python version installed?"

    In addition, also install Python 3.10. The last installed Python will automatically be the default Python interpreter of your system.

    On Windows, it is also possible to change the default Python interpreter by changing the order of the system-wide environment variables (move Python310 and Python310\Scripts to the top, see animation below).

    This is necessary e.g. if you have already installed Python 3.10, but another Python version is your default because you installed it in the meantime (e.g. 3.11).

    ![Change default Python](installation/change_default_python_version_win10.gif)

### Install NVIDIA Cuda 11.0

> If you have a modern NVidia graphics card.

If you intend to use OTVision on a PC with a modern NVidia graphics card, download and install the latest version of the [NVIDIA Cuda Toolkit](https://developer.nvidia.com/cuda-downloads) with default settings from the NVIDIA toolkit.
