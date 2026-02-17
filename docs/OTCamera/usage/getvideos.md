# Get the Videos

After recharging the battery of the OTCamera you can download the recorded videos.
You have two options:

1. Via Wi-Fi and SSH and
2. to an USB flash drive

## Wi-Fi

Turn on OTCamera as described in [Preparation & Safety](preparation_safety.md).
If OTCamera is connected to the Wi-Fi in your office, you can access via SSH using its IP address.
This works the same way as during the installation process.

Alternatively, you can establish a SSH connection using the access point of OTCamera.

By default the recorded videos and logs are stored in the home directory in `~/videos`.
You can download all videos via scp or rsync.

## USB

If you have an OTG USB adapter built into OTCamera, you can also have the videos copied to a flash drive.

Turn off OTCamera completely.
Plug a flash drive in the USB port of OTCamera and turn on OTCamera using the "Boot" switch.
During boot-up, OTCamera automatically checks whether a flash drive is plugged in.
If this is not the case, the recording function starts (as usual).

If a flash drive is plugged in, OTCamera starts in USB copy mode.
The yellow LED light blinks to indicate that videos are being copied.
If the LED lights up continuously, copying is complete.
In addition, the green LED lights up continuously when you can remove the flash drive.

OTCamera can then be shut down again by switching off the "Boot" switch.

The flash drive now contains all videos and a csv file.
The csv file gives an overview of all videos on OTCamera (not on the flash drive).

When you open the csv file, you can specify that certain videos should be deleted.
Just change the corresponding column and insert an `x` or `true`.

When you save the file and plug the flash drive back into OTCamera,the marked videos will be deleted the next time you boot up.

## Next steps

Now you should have all the videos.
In the next step you can process them with [OTVision](../../OTVision/index.md).
