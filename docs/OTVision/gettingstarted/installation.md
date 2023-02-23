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

??? warning "Read this if you want to detect road users on a Nvidia GPU"

    If you have a
    [Windows or Linux PC with a Nvidia graphics card](../requirements/#hardware-prerequisites)
    and already [installed CUDA](../requirements/#optional-nvidia-cuda-117),
    you have to do the following additional steps in your Terminal/Command Prompt:

    #### Check CUDA version

    Check the CUDA version (or if CUDA is installed at all)

    ```bash
    nvcc --version
    ```
    
    #### Navigate to the OTVision root directory

    ```bash
    cd "path/to/OTVision"
    ```

    ??? warning "Don´t choose the wrong directory"

        Maybe your OTVision root directory is called `OTVision-main`,
        if you downloaded it from Github (this is the correct directory).

        Inside the OTVision root directory, there is another directory called `OTVision`
        (this child directory is the wrong directory in every case)

    #### Activate virtual environment

    Activate the virtual environment that was created
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

    #### Install torch and torchvision for CUDA

    Depending on your operating system (Windows or Linux) and your CUDA version
    you can select, copy and run the install command from the
    [PyTorch Website](https://pytorch.org/) under "INSTALL PYTORCH"
    (choose Build="Stable", Package="pip" and Language="Python").

    E.g. for CUDA 11.7 and the latest stable PyTorch Build, the command is:

    ```bash
    pip3 install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu117
    ```

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
