# Development Version

The Raspberry Pi Zero is wonderful to use outside (it consumes little power, is cheap, ...).
But the development of OTCamera is more fun on a big Pi. Everything is much faster.

You will need

* a [prepared](gettingstarted.md) Raspberry Pi 2B/3B(+)/4 (the 2 GB works well)
* Camera module (no USB webcam)

You should follow the [Getting Started](gettingstarted.md) guide before continuing.

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
