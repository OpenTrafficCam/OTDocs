# Soft Version

The soft version of OTCamera can be built completely without soldering skills.
Power is supplied by a StromPi with a dedicated battery pack.
A USB powerbank is plugged into it to maximize the runtime.
The powerbank can be changed during operation without interrupting the recording.
A single power switch is also needed to control startup and shutdown.
The settings of the OTCamera are done via a smartphone using a web interface.

You will need

* a [prepared](gettingstarted.md) [Raspberry Pi Zero WH][zero] (32 Gb High Endurance Micro SD Card recommended)
* [Raspberry Pi Camera Module V2 NoIR][cam]
* [StromPi v3 rev. 1.1][strompi]
* [Battery Unit for StromPi 3][strompibat]
* Switch (for example [Marquardt Rocker Switch 1801][switch])
* USB powerbank (for example [Anker PowerCore 26800][powerbank]
* USB-A to micro-USB cable (should be included with powerbank)
* Housing (for example [Explorer Cases 2712][case]
* 3D printed mounting (comming soon)
* Ballhead to mount and adjust housing (for example Mantona Onyx 12 ballhead (M1-3612A))
* Quick release plate (for example Mantona AS-100-2M quick release plate)
* Mounting equipment to mount ballhead to mast

!!! note
    We have carefully selected all the parts mentioned and also use them ourselves.
    However, in each individual case the parts should be tested before the system is used productively.
    We do not receive any provision from the manufacturers.
    Of course, other parts can also be used.

!!! warning
    The Raspberry Pi Zero consumes very little power.
    Some USB powerbanks turn off the USB outputs when the current drops below a threshold.
    Since the StromPi charges the Battery Unit the first time it is plugged in, the powerbank may not turn off until the Battery Unit is fully charged.
    The Raspberry is then still supplied with power from the Battery Unit, but the energy of the Powerbank is not used.
    When buying the powerbank, you therefore have to make sure that it remains switched on even at very low currents.

## Setup the Software

Before everything is installed in the case, the Raspberry Pi and the StromPi are configured.

Prepare the Raspberry Pi and the StromPi:

1. Prepare the micro SD card as described in the [Getting Started](gettingstarted.md) guide
2. Plug the SD card into the Raspberry Pi
3. Connect the camera using the additional cable to the Raspberry Pi
4. Plug the Battery Unit onto the StromPi (there is only one plausible way to do it)
5. Plug the StromPi with Battery onto the Raspberry Pi

<!-- TODO #25 pictures of camera connection and final setup -->

You should follow the [Getting Started](gettingstarted.md) guide before continuing.

!!! note
    This content is under construction... Sorry :(

<!-- References -->
[zero]: https://www.raspberrypi.org/products/raspberry-pi-zero-w/
[cam]: https://www.raspberrypi.org/products/pi-noir-camera-v2/
[strompi]: https://joy-it.net/en/products/rb-strompi3
[strompibat]: https://joy-it.net/en/products/RB-StromPI3BAT
[switch]: https://www.marquardt-switches.com/rocker-switches.html?&no_cache=1&L=0&tx_produktkatalog2_pi1%5Bmode%5D=detail&tx_produktkatalog2_pi1%5Bmodifier%5D=0&tx_produktkatalog2_pi1%5Bvalue%5D=1800&tx_produktkatalog2_pi1%5Bpointer%5D=28&cHash=a3c70613fea4e1c6194be3fafdf068ea
[powerbank]: https://de.anker.com/collections/powerbanks/products/a1277
[case]: https://www.explorercases.com/en/products/2712/2712-be-copolymer-polypropylene-waterproof-case/
