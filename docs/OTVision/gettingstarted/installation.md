# Installation

> **Automatic** installation with one command

In this section, we provide instructions how to install **OTVision** on the most common
Operating Systems.

Before installing **OTVision**, make sure you system meets all
[**requirements**](../requirements/).

## Install OTVision

We provide install scripts for the most common operating systems.

=== "Windows"

    For the installation of **OTVision** on Windows systems, please perform the
    following steps:

    1. Download and unzip the latest version of
    [**OTVision**](https://github.com/OpenTrafficCam/OTVision/archive/refs/heads/master.zip)
    from GitHub or clone the
    [**OTVision** repository](https://github.com/OpenTrafficCam/OTVision).

    2. In the unzipped folder double-click the `install.cmd` and wait until the
    installation of the dependencies is complete.

    ??? "What is installed here?"

        The `install.cmd` script will create and activate a virtual environment (venv)
        and install the Python packages specified in the requirements.txt via pip
        from the [Python Package Index](https://pypi.org/).
        
        If you want to contribute code, additional requirements should to be installed
        in this virtual environment.
        Therefore, also double-click the `install_dev.cmd` in your **OTVision** folder
        and wait until the installation of the dependencies is complete.
        Find more information [here](https://opentrafficcam.org/contribute/).

=== "Linux / macOS"

    For the installation of **OTVision** on Linux and macOS systems,
    please perform the following steps:

    1. Download and unzip the latest version of
        [**OTVision**](https://github.com/OpenTrafficCam/OTVision/archive/refs/heads/master.zip)
        from GitHub or clone the
        [**OTVision** repository](https://github.com/OpenTrafficCam/OTVision).

    2. In the terminal, navigate to the **OTVision** folder. Then the run 
    
        ```text 
        ./install.sh
        ``` 
    
        and wait until the installation of the dependencies is complete.

    ??? "What is installed here?"

        The `install.sh` script will create and activate a virtual environment (venv)
        and install the Python packages specified in the requirements.txt via pip
        from the [Python Package Index](https://pypi.org/).
        
        If you want to contribute code, additional requirements should to be installed
        in this virtual environment.
        Therefore, also run the `install_dev.sh` in your **OTVision** folder
        and wait until the installation of the dependencies is complete.
        Find more information [here](https://opentrafficcam.org/contribute/).

## If you encounter problems

Maybe you also have to manually install Microsoft Visual C++ 14.0 or greater from the
[Visual Studio Build Tools](https://visualstudio.microsoft.com/visual-cpp-build-tools/).

In case of further problems please
[open an issue](https://github.com/OpenTrafficCam/OTVision/issues/new)
in the **OTVision** repository on GitHub.

We also welcome code contributions (e.g. fixing bugs or adding features) from other
programmers by forking the repository and creating a pull request.
Please check the [contribute section](https://opentrafficcam.org/contribute/)
of this documentation first.
