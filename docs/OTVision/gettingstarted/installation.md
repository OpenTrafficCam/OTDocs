# Installation

In this section, we provide instructions how to install **OTVision** on the most common
Operating Systems.

Before installing **OTVision**, make sure your system meets all
[requirements](../requirements/).

## Install OTVision

We provide install scripts for the most common operating systems.

Download and unzip the latest version of
[**OTVision**](https://github.com/OpenTrafficCam/OTVision/releases)
from GitHub or clone the
[**OTVision** repository](https://github.com/OpenTrafficCam/OTVision).

=== "Windows"

    Inside the unzipped folder open the `install.cmd` and wait until the
    installation of the dependencies is complete.

=== "Linux / macOS"

    In a terminal, navigate to the **OTVision** folder and run the installer.

    ```text 
    ./install.sh
    ``` 

    The installation of the dependencies could take a moment.

??? question "What is installed here?"

    The `install` script will create and activate a virtual environment (venv)
    and install the Python packages specified in the requirements.txt via pip
    from the [Python Package Index](https://pypi.org/).
    
    If you want to contribute code, additional requirements should to be installed
    in this virtual environment.
    Clone the [**OTVision** repository](https://github.com/OpenTrafficCam/OTVision) 
    from github. Run the `install_dev.sh` in your **OTVision** folder
    and wait until the installation of the dependencies is complete.
    Find more information [here](https://opentrafficcam.org/contribute/).

## Nvidia CUDA (optional)

If you have a
[Windows or Linux PC with a Nvidia graphics card](../requirements/#hardware-prerequisites)
and already [installed CUDA](../requirements/#nvidia-cuda-optional),
you chose the release with the suffix `-cuda`. It contains the requirements to use CUDA.
If you want to contribute to **OTVision** and use CUDA, you have to perform additional
steps in your Terminal/Command Prompt:

### Check CUDA version

Check if CUDA is recognized and available.

```bash
nvcc --version
```

Navigate to the OTVision root directory.

```bash
cd "path/to/OTVision"
```

!!! note "Where is the OTVision root directory?"

    It's the folder you downloaded und unzipped.

    Maybe your OTVision root directory is called `OTVision-main` after unzipping,
    if you downloaded it from Github. This is the correct directory.

    Inside the OTVision root directory, there is another directory called `OTVision`
    (this child directory is the wrong directory).

#### Activate virtual environment

Activate the virtual environment that was created
by running the [installation scripts](../installation).

=== "Windows command prompt"

    Open a Command Prompt an run:

    ```cmd 
    venv\Scripts\activate
    ``` 

=== "Linux / macOS terminal"

    ```bash
    source venv/bin/activate
    ```

The virtual environment should be activated, indicated by the `(venv)`
in braces in front of your current working directory in the terminal.

#### Install torch and torchvision for CUDA

Depending on your operating system (Windows or Linux) and your CUDA version
you can select, copy and run the install command from the
[PyTorch site](https://pytorch.org/) under "INSTALL PYTORCH"
(choose Build="Stable", Package="pip" and Language="Python").

E.g., for CUDA 11.7 and the latest stable PyTorch Build, the command is:

```bash
pip3 install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu117
```

## If you encounter problems

Maybe you also have to install Microsoft Visual C++ 14.0 or greater from the
[Visual Studio Build Tools](https://visualstudio.microsoft.com/visual-cpp-build-tools/).

In case of further problems please
[open an issue](https://github.com/OpenTrafficCam/OTVision/issues/new)
in the **OTVision** repository on GitHub or contact us.
We are happy to know about you experience.

We also welcome code contributions (e.g., fixing bugs or adding features) from other
programmers by forking the repository and creating a pull request.
Please check the [contribute section](/contribute/)
of this documentation first.
