# Preparation & Safety

This page covers safety considerations and everything you need to prepare before heading out to mount OTCamera.

!!! Warning "Safety and security"

    Please be aware that your OTCamera must not fall down.
    This applies to the place where it is mounted but also during assembly.

    Furthermore, check your local data protection regulations to guarantee you are operating according to the law.
    Depending on the position of the camera, it could be possible that you have to adjust the focus or take further measures.

    Usually you are not allowed to just install an OTCamera in public space and record videos.
    Please make sure you contact the responsible authority and verify whether you need a permission.

    OTCamera contains a Li-Ion cell and runs with an USB-battery.
    The maximum operating temperature is around 60 degrees Celsius.
    In warmer regions or on very hot days the ambient temperature in the case may become hotter, especially in direct sunlight.

## Required parts

OTCamera consists of various components:

1. The inner case with th electronic circuit, the switches and the LEDs,
2. An external USB-battery with a cable connected to the inner case,
3. The outer case for weather and theft protection,
4. The ball head with clamp for mounting the OTCamera on a pole.

You may also need the following during mounting:

1. Mobile phone or tablet to view the preview of OTCamera,
2. A ladder to mount the OTCamera sufficiently high,
3. Tools (screwdriver, cordless screwdriver, hexagon socket),
4. A drop guard, to secure OTCamera and the bracket from falling down,
5. A lock to protect against theft,
6. High-visibility clothing for you and your colleagues,
7. Traffic cones to warn pedestrians,
8. The permit for operating in the field.

!!! warning "Disclaimer"

    For preparing the measurement you may need to think about more things than we listed.
    This list is just to remind you that you need to think of everything.

## Preparation

### In the office

Before every measurement you should take care of a few things.

Additionally to the external USB-battery, OTCamera contains an integrated battery.
Before use, charge the OTCamera and the external USB-battery.
With an 26800 mAh external USB-battery and the integrated battery OTCamera can record up to 3.5 or 4 days in a row.
For example, if you install the OTCamera on Monday afternoon, you will have recordings of Tuesday, Wednesday and Thursday.

Before use, also connect the OTCamera to your local Wi-Fi to update the time of the hardware clock.
This is especially necessary if you did not use the OTCamera for a certain time.

!!! tip "Practice!"

    We recommend that every person who wants to mount a OTCamera should practice in a save/"dry" environment beforehand.
    This help to prevent anything going wrong out in the field.

### On site

Once everything is set up, you can start preparing the actual measurement on site.

Open the outer case, connect the external USB-battery with the inner case and put the external USB-battery in one of the brackets on the right side.
Turn on OTCamera by bringing all the switches in their "on" position.

Now the left green LED lights up permanently and indicates that OTCamera is booting up.
This takes a few tens of seconds.
After booted up, all LEDs turn off shortly and then start flashing.

The power supply over USB is working, when the **green LED** blinks every five seconds for two times.
Blinking only ones means that the power supply works using the internal battery.
Make sure that the USB cable is plugged in correctly on both sides and that the external USB battery is switched on.

The **yellow LED** should blink once every five seconds.
It means that Wi-Fi is switched on permanently.
On the one hand OTCamera connects with your Wi-Fi in the office and you can access OTCamera from your network.
On the other hand OTCamera creates it's own Wi-Fi access point.
The SSID of the access point and the password were set during installation.

The **red LED** should blink once every five seconds.
It means that the camera is currently recording.
Every time the LED blinks a new preview is created.

Everything is working just fine when the green LED blinks twice and the yellow and red LED blink once every five seconds.
For a detailed reference of all LED blink patterns, see [Buttons and LEDs](buttons_leds.md).

You can now connect to the Wi-Fi access point with your mobile phone or tablet.
After connecting to the Wi-Fi, you can call up the IP address of OTCamera in a browser, to see the preview.
This is usually [10.10.50.1](http://10.10.50.1).

??? question "Why does my mobile phone not connect?"

    Some mobile phones check whether there internet is accessable via Wi-Fi.
    If this is not the case, the mobile phone is connected but you cannot access the preview.
    It helps to change the mobile phone settings that you want to use the connection anyway.
    Or you can switch off your mobile data and thus force the use of Wi-Fi.

    We therefore use our tablet without mobile data for our measurements.

You should now see a site with the preview image.
The site automatically reloads every five seconds.
Below the preview image is a table with the most important information.

??? tip "Feature: Circular buffer"

    If you have already taken several measurements and the memory card is full, at some point the oldest video will be deleted so that recording can continue.

    However, we would still recommend deleting the videos after each measurement.

At the top of the page you will see a green bar, if everything works fine.
If the camera does not record, the external power supply is not connected or the "24/7" switch is not switched on, a yellow or red bar will appear at the top with a message.

??? warning "Check the time!"

    The camera name and the current time are displayed at the top of the preview image.
    Check the date and time each time you use OTCamera.

    If the time seems incorrect, first check if you are connected to the respective OTCamera and receive the correct preview image.
    Refresh you browser to check, if this is not the preview of the OTCamera you mounted previously.

    If it is the correct preview and the time is still not correct, there are two possible solutions:

    1. You have not connected the OTCamera to the internet for some time and have to do so in order to update the internal real-time clock.
    2. The button cell of the internal real-time clock is empty and has to be replaced.

    In doubt, hold your mobile phone in the camera image so that you can see the time in the video later.
    If you continue recording with wrong time, we recommend recording 24/7 to avoid missing data.

You can now use the right-hand switch "24/7" to set whether OTCamera should record permanently or only at the configured time of day.

When you switch off the Wi-Fi switch, the yellow LED flashes faster, indicating that the Wi-Fi is about to turn off.
The time until it switches off can be set and is by default 15 minutes.

Now you can close the outer case.
Be careful not to pinch the USB cable.
You do not need to open the outer case again.

!!! tip "Always have extra USB cables with you :)"

Once preparation is complete, proceed with [Mounting](mounting.md).
