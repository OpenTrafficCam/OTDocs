# Development Version

The Raspberry Pi Zero is wonderful to use outside (it consumes little power, is cheap, ...).
But the development of OTCamera is more fun on a big Pi. Everything is much faster.

You will need

* Raspberry Pi 2B/3B(+)/4 (the 2 GB works well) and power supply
* Camera module (no USB webcam)
* Micro SD card (a High Endurance version is recommended)
* SD Card Reader
* [Raspberry Pi Imager](https://www.raspberrypi.org/software/).

## Prepare the SD Card

Download and install the [Raspberry Pi Imager](https://www.raspberrypi.org/software/), insert the SD-Card and start the Imager.

![Raspberry Pi Imager advanced settings](rpi_imager_1.png)

It's recommended to use the Raspberry Pi Imager [Advanced Options](https://www.raspberrypi.org/blog/raspberry-pi-imager-update-to-v1-6/) to do some basic setup.
Just press ++ctrl+shift+x++ on startscreen to access advanced options.

Setup a hostname, enable SSH, either password based or using public-key authentication (recommended!), configure your Wifi credentials and choose the correct locale for Wifi, timezone and keyboard layout. You can also skip the first-run wizard.

??? help "How to generate a public key"

    Generate SSH-Keys for password-less connection. On your desktop computer open a command line terminal (CMD or Powershell on Windows or a bash on Linux) and run

    ```powershell
    ssh-keygen
    ```

    to generate a public private key combination. Add the private key to your ssh-agent (you may need to [update OpenSSH on Windows](https://superuser.com/questions/1395962/is-it-possible-to-update-the-built-in-openssh-client-in-windows-10/1555453#1555453)).

![Raspberry Pi Imager advanced settings](rpi_imager_2.png)

Now insert the SD card into the PC. Select Raspberry Pi OS Lite (32-bit) as operating system under "Raspberry Pi (Other)". Then select the SD card on which the operating system will be installed.

!!! warning

    It is possible to select not only the SD card, but also the hard drive or SSD where your operating system or other PC data is stored. Make sure that you really select the right SD card. Most of the time, you can tell by the size.

Press the Write button and wait until the Raspberry Pi Imager has completely written and verified your SD card.

!!! tip
    Sometimes the verification may fail. Try another USB port on your PC or another card reader. If this does not help, maybe the SD card is broken.

??? help "Setup without Raspberry Pi Imager"

    1. Add an empty file named `ssh` to the boot partition to [enable ssh on first boot](https://www.raspberrypi.org/documentation/remote-access/ssh/README.md).

    2. Add your Wifi credentials as described in the [Raspberry Pi Documentation](https://www.raspberrypi.org/documentation/configuration/wireless/headless.md)

    3. Connect to the pi using ssh (`ssh pi@raspberry`)to the Pi using password authentication.

        Create and edit the needed `authorized_keys` file.

        ```bash
        mkdir -p ~/.ssh
        nano ~/.ssh/authorized_keys
        ```

        Copy your public key on the host and paste it on the pi, save&close using Ctrl+X - Enter - Y.

## Setup the Raspberry

Now, take the SD-Card and insert it in the Raspberry.
You can now boot the Pi on LAN or within your Wifi by connecting it to the power supply.
Try to connect to the Pi using a command line or PowerShell:

```powershell
ssh pi@otcamera01
```

If everything is setup correctly, you will be asked to add the host key to the list of known hosts (answer: yes) and you should be connected to your Raspberry Pi.

??? help "warning: agent returned different signature type ssh-rsa (expected rsa-sha2-512)"

    If you are on Windows you may need to update OpenSSH if you ar getting this error:

    ```powershell
    warning: agent returned different signature type ssh-rsa (expected rsa-sha2-512)
    ```

    !!! warning
        This guide should run on Windows 10 but you are modifing your system files.
        Please do not do anything you do not understand! Read the [source](https://superuser.com/a/1609071) for more information.
        We are not liable for any damage you may cause to your system. But we followed the steps ourselves and everything went well.

    1. Download the latest OpenSSH for Windows release [here](https://github.com/PowerShell/Win32-OpenSSH/releases). Depending on your Windows version it is probably `OpenSSH-Win64.zip`.

    2. Open Windows Explorer and navigate to your Download folder. You should see the `OpenSSH-Win64.zip`. Open an elevated PowerShell via File &rightarrow; Open Windows PowerShell &rightarrow; Open Windows PowerShell as administrator.

    3. If you copy and paste the following code, you will unzip OpenSSH and overwrite the system's default OpenSSH version.

        ```powershell
        # Overwrite windows installed bins
        $openSshBins = (Get-ChildItem 'C:\WINDOWS\System32\OpenSSH\').Name
        Expand-Archive -Path .\OpenSSH-Win64.zip -DestinationPath .
        takeown.exe /a /r /f C:\Windows\System32\OpenSSH\
        icacls.exe 'C:\Windows\System32\OpenSSH' /grant 'BUILTIN\Administrators:(OI)(CI)F'
        icacls.exe 'C:\Windows\System32\OpenSSH' /grant 'BUILTIN\Administrators:F' /t
        Stop-Service ssh-agent
        $openSshBins | %{ Copy-Item -Path .\OpenSSH-Win64\$_ -Destination C:\Windows\System32\OpenSSH\ }
        Start-Service ssh-agent
        ```

![Command Line](login_ssh.png)

If you have successfully logged in now, we can configure the Raspberry Pi for the OpenTrafficCam.

Update the pi by running apt and reboot.

```bash
sudo apt update && sudo apt upgrade -y
sudo reboot
```

Reconnect to your pi (open PowerShell and run `ssh pi@otcamera01`) and run the raspberry configuration tool.

```bash
sudo raspi-config
```

Change the following settings to appropriate values:

* System Options &rightarrow; Password
* Interface Options &rightarrow; Camera &rightarrow; enable

??? help "Setup without Raspberry Pi Imager"

    If you did not use the Raspberry Pi Imager, you will need to setup a few more things.

    * System Options
        * Hostname
    * Interface Options
        * Camera (enable)
    * Localization Options
        * Timezone (Europe/Berlin)
        * WLAN Country (DE)

Reboot the Pi afterwards (`sudo reboot`).

## Setup VS Code Remote Development Extension

Install the [Remote-SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) extension on your desktop using the marketplace.

Add the Pi as [remote host](https://code.visualstudio.com/docs/remote/ssh#_connect-to-a-remote-host).
Connect to the Pi using the Remote-SSH extension (rightclick on the ne host - "Connect to Host in New Window"). When asked for the operating system of the host, choose "Linux". VS code will download and install the necessary dependencies on the Pi.

Open the extension manager in the new windows an install all necessary extensions.

## Setup Git and GitHub

Install git using apt.

```bash
sudo apt install git
```

To setup your git commit name and email, login to your github account and copy your [private commit email](https://docs.github.com/en/free-pro-team@latest/github/setting-up-and-managing-your-github-user-account/setting-your-commit-email-address).

On the pi run

```bash
git config --global user.name "Your Name"
git config --global user.email "123456+username@users.noreply.github.com"
```

The easiest way to setup your GitHub credentials is to use vs code. In the file explorer panel click "Clone Repository" and choose "Clone from GitHub". Depending on your desktop computer settings, a browser tab will open to login into your GitHub account. Afterwards, you can search for "OpenTrafficCam/OTCamera" inside the vs code command prompt and select a folder to pull (choose /home/pi by default).

## Setup Python and Dependencies

By default, Raspberry OS light doesn't come with PIP installed. We will need it, to install required packages.

```bash
sudo apt-get install python3-pip
```

Raspberry OS ships with python 2 and python 3. By default python 2 is used. You may want to change that to python 3 by adding two single lines to ```.bashrc```.

```bash
nano ~/.bashrc

# add the following two lines at the end of the file (without #)

# alias python='/usr/bin/python3'
# alias pip=pip3

# save & exit (Ctrl+X - Y)

source ~/.bashrc

python --version
pip --version
```

Both commands should state, that they are (using) python 3.(x).

## Install Screen to Run OTCamera in Background

!!! quote

    [Screen](https://www.gnu.org/software/screen/) is a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.

To install screen on the developer pi just run

```bash
sudo apt-get install screen
```

You can now start ```screen``` and use it as an usual terminal. You can run the ```python OTCamera``` to start the camera in an active screen session. Hit ++ctrl+a++ and then ++d++ to detach the current session. Screen will still run in background including the OTCamera. If you start screen including the ```-r``` option you can reconnect to this terminal session:

```bash
screen -r
```

You can safely disconnect you ssh connection to the pi, while the screen session is still running.

## Ready to Develop

You should now be ready to pull the [OTCamera repository](https://github.com/OpenTrafficCam/OTCamera) and start developing.
