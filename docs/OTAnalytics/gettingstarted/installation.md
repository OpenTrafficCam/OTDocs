# Installation

!!! warning "READ THIS BEFORE YOU INSTALL AND USE THE SOFTWARE"

    **License**

    This software is licensed under the GNU General Public License Version 3 (GNU GPL-3.0).

    A full copy of the license is included with code repository as LICENSE file and can also be viewed online: [LICENSE file on Github](https://github.com/OpenTrafficCam/OTAnalytics/blob/main/LICENSE).
    
    Please respect this license!

    **Disclaimer**

    Although OTAnalytics has been widely used in many transportation-related projects, it is still under active development.
    Features and functionality may change at any time.
    Particularly the user interface and the data formats should not be considered stable.

    This software is provided "as is," without any express or implied warranties or liabilities.
    Use is at your own risk.
    Neither the authors nor contributors assume any responsibility for damages resulting from the use of this software.
    For more details, refer to Sections 15 and 16 of the GNU GPL-3.0.

## Hardware requirements

OTAnalytics runs on most modern desktops and laptops (e.g. with an i5 processor and 8 GB of RAM).

Please note:

- More RAM allows you to load more tracks of road users simultaneously.
- A faster processor will improve the runtime of the analyses and make the user interface more responsive.

## Download and install Python 3.11

If not done yet, visit [www.python.org/downloads/](https://www.python.org/downloads/) and install Python 3.11.x for your platform.

Make sure you at least add the following boxes:

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

## Download and install OTAnalytics

Visit [OTAnalytics latest releases on GitHub][1], scroll down to the list of assets and download the correct "otanalytics" `.zip` file for your platform.

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

[1]: https://github.com/OpenTrafficCam/OTAnalytics/releases/latest
