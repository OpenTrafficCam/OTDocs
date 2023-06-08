# Buttons and LEDs

OTCamera can be controlled using four switches, and its status is indicated by 3 LEDs.

The switches from left to right are:

- Reset
- Boot
- Wi-Fi
- 24/7

The three LEDs correspond to the rightmost three switches.

The **Reset** switch functions as a constant power supply for the Raspberry Pi.
When the switch is turned off, the power supply to the Raspberry Pi is interrupted.
Therefore, it is recommended to keep the Reset switch always turned on unless there is a problem with the Raspberry Pi.

!!! warning "Potential Data Loss"
    When the Reset switch is pressed, the Raspberry Pi is not shut down properly but turns off immediately.
    This can potentially affect the file system, and the SD card may become unreadable.

The other three switches are used for normal operation.

The **Boot** switch is used to power the system on and off.
When it is turned on, the green LED below the switch remains continuously lit.

Once the Raspberry Pi has finished booting and OTCamera has been launched, the green LED starts blinking.
If it blinks twice, an external power source is connected via USB.
If it blinks only once, the system is running on internal battery power.

After OTCamera has finished booting, the other two LEDs also start blinking (if the Wi-Fi and 24/7 switches are turned on).

The **Wi-Fi** switch controls the Wi-Fi module of the Raspberry Pi.
This includes both the connection to a Wi-Fi network and the Wi-Fi access point of the OTCamera itself.

When the switch is turned off, the Wi-Fi is turned off after a configurable time period (default is 15 minutes).
This allows the switches to be turned off before mounting, but still allows access to the web interface for a few minutes.
This way, the camera can be safely mounted and aligned.

The Wi-Fi LED blinks once per second when the timer is active.
When the Wi-Fi is permanently enabled, the Wi-Fi LED blinks once every 5 seconds.
Once the Wi-Fi is turned off, the Wi-Fi LED stops blinking and turns off completely.

If the Wi-Fi switch is turned on again, the timer is canceled, or the Wi-Fi is turned back on.
If the switch is turned off again, the timer starts again from the beginning.

If the Wi-Fi switch is already turned off when OTCamera starts up, the Wi-Fi is immediately turned off after the start (without a timer).

The **24/7** switch controls when OTCamera records videos.
If the switch is turned on, recording is continuous.
If the switch is turned off, recording only occurs between a configured start and end time (default is from 06:00 AM to 10:00 PM).

The LED below the switch indicates whether the camera is currently recording.
It should blink every 5 seconds.
When the LED blinks, a new preview for the web interface is also generated.

## LED Blink Patterns

| LED            | Blink Pattern     | Description                                                                                    |
|----------------|-------------------|------------------------------------------------------------------------------------------------|
| Boot (green)   | `__________`      | OTCamera powered off.                                                                          |
| Boot (green)   | `**********`      | OTCamera is booting.                                                                           |
| Boot (green)   | `*_*_______`      | OTCamera is running and connected to external power (USB).                                     |
| Boot (green)   | `*_________`      | OTCamera is running and **not** connected to external power (USB).                             |
| Wi-Fi (yellow) | `__________`      | Wi-Fi and Access Point (AP) are turned off.                                                    |
| Wi-Fi (yellow) | `*_________`      | Wi-Fi and AP are turned on.                                                                    |
| Wi-Fi (yellow) | `*_*_*_*_*_`      | Wi-Fi will turn off after a specific timer period (default is 15 minutes).                     |
| Record (red)   | `*_________`      | OTCamera is currently recording videos.                                                        |
| Record (red)   | `__________`      | OTCamera is **not** recording videos, probably because the current time is outside the recording timer. |
|                | `_`: off  `*`: on |                                                                                                |

<!--
German translation for future use:

# Buttons and LEDs

OTCamera lässt sich über vier Schalter steuern und der Status wird über 3 LEDs signalisiert.

Die Schalter von Links nach Rechts:

- Reset
- Boot
- Wi-Fi
- 24/7

Die drei LEDs gehören zu den rechten drei Schaltern.

Der **Reset**-Schalter funktioniert so, dass er dauerhaft eingeschaltet ist.
Darüber wird der Raspberry Pi mit Strom versorgt.
Wird der Schalter ausgeschaltet, wird die Stromversorgung des Raspberry Pi unterbrochen.

!!! warning "Möglicher Datenverlust"
    Der Raspberry Pi wird bei der Betätigung des Reset-Schalters nicht heruntergefahren, sondern schaltet sofort aus.
    Dadurch kann das Dateisystem beeinträchtigt werden und es kann sein, dass die SD-Karte nicht mehr lesbar ist.

Der Reset-Schalter sollte also einfach immer eingeschaltet bleiben, sofern kein Problem mit dem Raspberry Pi besteht.

Die drei anderen Schalter werden für den normalen Betrieb genutzt.

Der **Boot**-Schalter ist dafür da, das System ein- und auszuschalten.
Wird er eingeschaltet, leuchtet die grüne LED unter dem Schalter dauerhaft grün.

Sobald der Raspberry Pi hochgefahren ist und OTCamera gestartet wurde, fängt die grüne LED an zu blinken.
Blinkt sie doppelt, ist eine externe Stromversorgung über USB angeschlossen.
Blinkt sie nur einmal, läuft das System auf der internen Batterie.

Nachdem OTCamera hochgefahren ist, blinken außerdem die beiden anderen LEDs (wenn die beiden Schalter `Wi-Fi` und `24/7` eingeschaltet sind).

Der **Wi-Fi**-Schalter steuert das Wi-Fi Modul des Raspberry Pi.
Das betrifft einerseits die Verbindung zu einem Wi-Fi Netzwerk und andererseits den Wi-Fi Access Point der OTCamera selbst.

Wird der Schalter ausgeschaltet, wird nach einem definierten Timer (default ist 15 Minuten) das Wi-Fi abgeschaltet.
Das dient dazu, dass vor der Montage der Schalter ausgeschaltet werden kann, aber noch einige Minuten auf das Webinterface zugegriffen werden.
So kann die Kamera sicher montiert und ausgerichtet werden.

Die Wi-Fi LED blinkt einmal pro Sekunde, sobald der Timer aktiv ist.
Wenn das Wi-Fi dauerhaft eingeschaltet ist, blinkt das Wi-Fi einmal alle 5 Sekunden.
Sobald das Wi-Fi ausgeschaltet wurde, blinkt die Wi-Fi LED nicht mehr und geht komplett aus.

Wird der Wi-Fi Schalter wieder eingeschaltet wird der Timer abgebrochen bzw. das Wi-Fi wieder eingeschaltet.
Bei erneutem Ausschaltet startet der Timer wieder von vorne.

Ist der Wi-Fi Schalter beim Starten der OTCamera bereits ausgeschaltet, wird das Wi-Fi direkt nach dem Start ausgeschaltet (also ohne Timer).

Der **24/7** Schalter steuert, wann die OTCamera Videos aufzeichnet.
Ist der Schalter eingeschaltet, wird immer aufgezeichnet.
Wird der Schalter ausgeschaltet, wird nur zwischen einer konfigurierten Start- und Enduhrzeit aufgezeichnet (default ist 06:00 Uhr bis 22:00 Uhr).

Die LED unter dem Schalter signalisiert, ob die Kamera zur Zeit aufzeichnet. Sie sollte alle 5 Sekunden blinken.
Wenn die LED blinkt, wurde auch eine neue Vorschau für das Webinterface erstellt.

## LED Blink Patterns

| LED            | Blink Pattern     | Description                                                                                    |
|----------------|-------------------|------------------------------------------------------------------------------------------------|
| Boot (green)   | `__________`      | OTCamera powered off.                                                                          |
| Boot (green)   | `**********`      | OTCamera is booting.                                                                           |
| Boot (green)   | `*_*_______`      | OTCamera is running and connected to external power (USB).                                     |
| Boot (green)   | `*_________`      | OTCamera is running and **not** connected to external power (USB).                             |
| Wi-Fi (yellow) | `__________`      | Wi-Fi and Access-Point (AP) are turned off.                                                    |
| Wi-Fi (yellow) | `*_________`      | Wi-Fi and AP are turned on.                                                                    |
| Wi-Fi (yellow) | `*_*_*_*_*_`      | Wi-Fi will turn out after specific timer (default is 15 minutes).                              |
| Record (red)   | `*_________`      | OTCamera is currently recording videos.                                                        |
| Record (red)   | `__________`      | OTCamera is **not** recording videos. Probably because current time is not in recording timer. |
|                | `_`: off  `*`: on |                                                                                                | -->
