# Installation

> **Automatic** installation with one command

In this section, we provide instructions how to install OTVision on the most common Operating Systems.

Before installing OTVision, **please be sure you completed the installation of the pre-requisites**. A description can be found [here](../requirements/).

## Install OTVision

For the installation of OTVision, we provide install scripts for the most common operating systems.

=== "Windows"

    For the installation of OTVision on Windows systems, please perform the following steps:

    1. Download and unzip the latest version of [OTVision](https://github.com/OpenTrafficCam/OTVision/archive/refs/heads/master.zip) from Github or clone the [OTVision repository](https://github.com/OpenTrafficCam/OTVision).

    2. In the unzipped folder double-click the `install.cmd` and wait until the installation of the dependencies is complete.

    Developers are recommended to install the dev-environment as well. Additional Python packages that are needed for development will be installed. Therefore, also double-click the `install_dev.cmd` in your OTVision folder and wait until the installation of the dependencies is complete.

=== "Linux / MacOS"

    For the installation of OTVision on Linux and MacOS systems, please perform the following steps:

    1. Download and unzip the latest version of [OTVision](https://github.com/OpenTrafficCam/OTVision/archive/refs/heads/master.zip) from Github or clone the [OTVision repository](https://github.com/OpenTrafficCam/OTVision).

    2. In the terminal, navigate to the OTVision folder. Then the run `$ ./install.sh` and wait until the installation of the dependencies is complete.

    Developers are recommended to install the dev-environment as well. Additional Python packages that are needed for development will be installed. Therefore, also run `$ ./install_dev.sh` in your OTVision folder from the terminal and wait until the installation of the dependencies is complete.

## If you encounter problems

Maybe you also have to manually install Microsoft Visual C++ 14.0 or greater from the [Visual Studio Build Tools](https://visualstudio.microsoft.com/visual-cpp-build-tools/).

In case of further problems please [open an issue](https://github.com/OpenTrafficCam/OTVision/issues/new) in the OTVision repository on Github.

We also welcome code contributions (e.g. fixing bugs or adding features) from other programmers by forking the repository and creating a pull request.
Please check the [contribute section](https://opentrafficcam.org/contribute/) of this documentation first.
