# Hardware Clock

The Raspberry Pi itself doesn't bring a hardware clock.
It's assumed that a Pi always has a internet connection to get the current time.
Since we want to use OTCamera in the field and thus may not have a Wi-Fi connection to access internet, we'll need a dedicated hardware clock (i.e. real time clock or RTC).
It contains a backup battery (a coin cell) to keep track of time.
The Pi will use the hardware clock time to set the system time.

There are several RTC chips out there.
There are even several RTC modules that are specifically designed to use with a Pi.
One of the most precise RTC chips is the DS3231.
We are using a [Adafruit PiRTC - Precise DS3231 Real Time Clock for Raspberry Pi](https://www.adafruit.com/product/4282).

Adafruit also provides a good (but little bit outdated) [tutorial on how to use a RTC](https://learn.adafruit.com/adding-a-real-time-clock-to-raspberry-pi) on the Pi.
The follwing description is based on that tutorial.

First, we'll need to enable I2C to communicate with the RTC.
Either use `sudo raspi-config` and navigate to:

* Interface Options &rightarrow; I2C &rightarrow; Yes

Or just use the command-line version of raspi-config:

```bash
sudo raspi-config nonint do_i2c 0
```

Let's install and use `i2c-tools` to see if the RTC works:

```bash
sudo apt install i2c-tools -y
sudo i2cdetect -y 1
```

You should see an output of several lines containing `68` in one of them.

We now need to add a device tree overlay in `/boot/config.txt` by adding the highlighted line at end of the file:

```txt hl_lines="20" linenums="1" title="/boot/config.txt (end of file)"
...
# (e.g. for USB device mode) or if USB support is not required.
otg_mode=1

[all]

[pi4]
dtoverlay=vc4-fkms-v3d
# Run as fast as firmware / board allows
arm_boost=1

[all]
gpu_mem=128

# OTCamera
dtoverlay=disable-bt
disable_camera_led=1
dtparam=act_led_trigger=none
dtparam=act_led_activelow=on
dtoverlay=i2c-rtc,ds3231
```

??? help "I'm not using the DS3231"

    If you are using a different RTC than the DS3231, check out the Adafruit tutorial.

    In a nutshell: Use `dtoverlay=i2c-rtc,ds1307` or `dtoverlay=i2c-rtc,pcf8523` instead.

After rebooting the Pi (`sudo reboot`) you can run `sudo i2cdetect -y 1` again.
Instead of `68`there should be a `UU` instead.

Now we'll disable the fake hardware clock:

```bash
sudo apt remove fake-hwclock -y
sudo update-rc.d -f fake-hwclock remove
sudo systemctl disable fake-hwclock
```

Additionally, we'll need to comment out some lines in `/lib/udev/hwclock-set`.
So run `sudo nano /lib/udev/hwclock-set` and add `#` at the beginning of the lines:

```txt hl_lines="7-11" linenums="1" title="/lib/udev/hwclock-set"
#!/bin/sh
# Reset the System Clock to UTC if the hardware clock from which it
# was copied by the kernel was in localtime.

dev=$1

#if [ -e /run/systemd/system ] ; then
#    exit 0
#fi

#/sbin/hwclock --rtc=$dev --systz
/sbin/hwclock --rtc=$dev --hctosys
```

The Pi should now be able to communicate with the RTC.
Let's try it:

```bash
sudo hwclock -r
```

The Pi should now have automatically synced the time.
If not, check if the Pi knows the correct time and sync it once:

```bash
date
sudo hwclock -w
```

Done :)

Your OTCamera should now be able to keep track of time without any USB power connected and without access to the internet.
We recommend booting your OTCamera once within Wi-Fi range before each recording to update the time, although the DS3231 is fairly accurate.
