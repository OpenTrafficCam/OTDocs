# Overview

No matter which version you want to install, you will always use a Raspberry Pi as a base.

You will need:

- Raspberry Pi 2B / 3B(+) / 4 / Zero W / Zero 2W and power supply
- We recommend a Zero W or Zero 2W because they draw substantially less power.
- Micro SD card (a High Endurance version is recommended)
- SD Card Reader
- [Raspberry Pi Imager](https://www.raspberrypi.org/software/).

!!! warning

    Even though we have completed the guide ourselves, every PC is different and Raspberry OS can change as well.
    There are steps described with which you can break your Windows, macOS or Linux on your PC.
    You should know what you are doing.
    We are not responsible for any damage that may occur.

## Quick Installer

We provide a simple quick installer which will do most of the work for you.
We're assuming that you'll use an DS3132 RTC module.
If you are using a different or no RTC module you should adjust the quick installer.

!!! info
If you like, you can also setup the Raspberry Pi and install OTCamera manually.
The necessary steps are described on the following pages.

### Prepare the SD-Card

To use the quick installer you'll need to [prepare a SD-Card](installation/prepare-sd-card.md) first.
If done correctly you should now be able to connect to your Raspberry Pi via SSH.

### Update and Upgrade the System

After preparing the SD-Card it is important to update and upgrade the Raspberry Pi before using the quick installer.

To do this execute the following command:

```bash
sudo apt update && sudo apt upgrade -y && sudo reboot
```

### Download and Run Quick Installer

Connect to your Raspberry Pi via SSH again after reboot and download and run the quick installer:

```bash
wget https://raw.githubusercontent.com/OpenTrafficCam/OTCamera/master/raspi-files/install_otcamera.sh
sudo bash install_otcamera.sh
```

You will be asked for some config values.

After the installer complete, simply reboot the Raspberry Pi and the OTCamera software should be up and running.

If not, please report your issues using the [GitHub issue tracker](https://github.com/OpenTrafficCam/OTCamera/issues).

!!! note
We are planning to offer a ready-to-use image for the Raspberry Pi, which can be easily installed.
The setup will then be even easier.
Stay tuned :)
