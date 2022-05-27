# Overview

No matter which version you want to install, you will always use a Raspberry Pi as a base.

You will need:

* Raspberry Pi 2B / 3B(+) / 4 / Zero W / Zero 2W and power supply
* We recommend a Zero W or Zero 2W because they draw substantially less power.
* Micro SD card (a High Endurance version is recommended)
* SD Card Reader
* [Raspberry Pi Imager](https://www.raspberrypi.org/software/).

!!! warning

    Even though we have completed the guide ourselves, every PC is different and Raspberry OS can change as well.
    There are steps described with which you can break your Windows, macOS or Linux on your PC.
    You should know what you are doing.
    We are not responsible for any damage that may occur.

On the following sites you'll get all the information to install OTCamera manually on your Raspberry Pi.
We also provide a simple quick installer which will do most of the work.

## Quick Installer

To use the quick installer you'll need to [prepare a SD-Card](prepare-sd-card/) first.

If you can connect to your Raspberry Pi using SSH download and run the quick installer:

```bash
wget https://raw.githubusercontent.com/OpenTrafficCam/OTCamera/first-version/raspi-files/install_otcamera.sh
sudo bash install_otcamera.sh
```

You will be asked some config values.

After the installer completed, just restart the Raspberry Pi and everthing should be ready to go.

If not, please report your issues using the [GitHub issue tracker](https://github.com/OpenTrafficCam/OTCamera/issues).

!!! note
    We are planning to offer a ready-to-use image for the Raspberry Pi, which can be easily installed.
    The setup will then be much easier.
    Stay tuned :)
