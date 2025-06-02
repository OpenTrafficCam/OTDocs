# Installation

In this section, we provide instructions how to install OTAnalytics on the most common
Operating Systems.

## Hardware requirements

OTAnalytics runs on most modern desktop pcs and laptops (e.g. with an i5 processor and 8 GB of RAM).

Please note:

- More RAM allows you to load more tracks of road users simultaneously.
- A faster processor will improve the runtime of the analyses and make the user interface more responsive.

## Install Python 3.12

If not done yet, visit [www.python.org/downloads/](https://www.python.org/downloads/) and install Python 3.12.x for your platform.

Please make sure to include at least the following boxes:

=== "Windows"

    - Add Python to PATH
    - pip
    - tcl/tk
    - Add python to environment variables
    - Precompile standard library

=== "macOS / Linux"

    - GUI applications
    - UNIX command-line tools
    - Shell profile updater
    - Install or upgrade pip

## Install OTAnalytics

Visit [OTAnalytics latest releases on GitHub](https://github.com/OpenTrafficCam/OTAnalytics/releases/latest),
 scroll down to the list of assets and download the correct "otanalytics" `.zip` file for your platform.

Unzip the file to a location of your choice (preferably local).

Open a terminal window (or command prompt), navigate to the unzipped folder and run the install script as follows:

=== "Windows"

    ```cmd
    .\install.cmd
    ```

=== "macOS / Linux"

    ```sh 
    sh ./install.sh
    ```

Wait until the installation of dependencies is complete - this could take some time.

## Run OTAnalytics

If you left the terminal window, open it and navigate to the unzipped folder, again.
Run the start script as follows:

=== "Windows"

    ```cmd
    .\start_gui.cmd
    ```

=== "macOS / Linux"

    ```sh 
    sh ./start_gui.sh
    ```

## What else?

If you encounter problems, have questions or like to request features, please [open an issue](https://github.com/OpenTrafficCam/OTAnalytics/issues/new) on GitHub.

We welcome code contributions (e.g. fixing bugs or adding features) by the community.
If you consider contributing, please check the [contribute section](https://opentrafficcam.org/contribute/) of this documentation first.

If you like to receive professional support, please have a look at our [services](https://opentrafficcam.org/pricing/) or [contact us](mailto:team@opentrafficcam.org) for more information.
