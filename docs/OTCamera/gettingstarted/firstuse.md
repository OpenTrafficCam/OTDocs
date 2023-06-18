# First Use

Wenn du eine neue OTCamera selbst gebaut oder von uns geliefert bekommen hast, kannst du sie jetzt endlich in Betrieb nehmen.
Diese Seite gibt dir einen Überblick, wie du OTCamera vorbereitest, montierst, Videos aufnimmst und die Videos herunterlädst.
Die Videos kannst du dann mit OTVision weiterverarbeiten.

Für mehr Details zu den einzelnen Schritten, schau dir auch die nächsten Seiten an.

!!! warning "Safety and Security"
    Bitte achte immer darauf, dass deine OTCamera nicht herunterfallen kann.
    Das gilt natürlich für die Stelle, an der sie montiert ist, aber auch während der Montage.

    Außerdem musst du immer aufpassen, dass du den Datenschutz richtig gewährleisten kannst.
    Je nach Position der Kamera kann es notwendig sein, dass du den Fokus des Kameramoduls anpasst
    oder weitere Schritte hinzufügen musst.

    In der Regel darf man im öffentlichen Raum nicht einfach eine OTCamera montieren und Videos aufzeichnen.
    Kläre bitte immer mit den zuständigen Institutionen, ob du eine Genehmigung benötigst.
    
    OTCamera enthält eine Li-Ion Zelle und wird mit einer USB-Powerbank betrieben.
    In der Regel können diese Akkus bis etwa 60°C betrieben werden.
    In heißen Regionen oder an sehr heißen Tagen kann es im Gehäuse eventuell heißer werden.

## Benötigte Teile

OTCamera besteht aus mehreren Komponenten:

1. Dem Innengehäuse mit der Elektronik, den Schaltern und den LEDs,
2. einer USB-Powerbank mit Kabel zum Innengehäuse,
3. dem Außengehäuse für den Wetterschutz und die Diebstahlsicherung und
4. dem Kugelkopf mit Schelle zur Montage der OTCamera an einem Masten.

Du brauchst für die Montage eventuell zusätzlich noch:

1. Ein Smartphone oder Tablet, um das Vorschaubild von OTCamera zu sehen,
2. eine Leiter, wenn du OTCamera ausreichend hoch installieren willst,
3. Montagematerial (Schraubenzieher, Akkuschrauber, Außensechskant-Nuss),
4. Fallsicherungen, um OTCamera und die Halterung vor dem Herunterfallen zu schützen,
5. ein Schloss um OTCamera vor Diebstahl zu schützen,
6. Warnschutzkleidung für dich und deine Kolleg:innen und
7. eine Genehmigung für die Messung.

!!! note
    Eventuell brauchst du für deine Messung auch noch mehr Dinge, um die du dich kümmern musst.
    Diese Liste soll dir nur Hinweise geben, damit du an alles denkst.

## Vorbereitung

Vor einer Messung solltest du dich um ein paar Dinge kümmern.

OTCamera hat neben der USB-Powerbank noch einen eingebauten Akku.
Lade die OTCamera selbst und die USB-Powerbank vorher vollständig auf.
Mit einer großen 26800 mAh USB-Powerbank und dem internen Akku kann OTCamera etwa 3,5 bis 4 Tage am Stück aufzeichnen.
Das heißt du kannst z.B. am Montagnachmittag aufbauen und hast dann Dienstag, Mittwoch und Donnerstag vollständig aufgezeichnet.

!!! tip
    Wir empfehlen, dass jede Person, die OTCamera montiert, die Montage im Büro übt.
    Das verhindert, dass draußen im Feld etwas schief geht.

## Montage und Messung

Wenn alles vorbereitet ist, kannst du deine Messung beginnen.

Öffne das Außengehäuse, verbinde die USB-Powerbank mit dem Innengehäuse und stecke die USB-Powerbank in eine der Halterungen auf der rechten Seite.
Schalte direkt danach OTCamera ein, indem du alle Schalter in die "Ein" Postion bringst.

Die linke, grüne LED leuchtet jetzt dauerhaft auf und zeigt dir an, dass OTCamera hochfährt.
Das dauert einige zehn Sekunden.
Nachdem OTCamera hochgefahren ist, gehen kurz  alle LEDs aus und blinken danach.

Wenn die **grüne LED** etwa alle fünf Sekunden zweimal blinkt, erfolgt die Stromversorgung über USB.
Blinkt sie nur einmal, läuft die Kamera auf dem internen Akku.
Schau dann, ob das USB Kabel an beiden Seiten richtig eingesteckt ist und ob die USB-Powerbank eingeschaltet ist.

Die **gelbe LED** sollte einmal alle fünf Sekunden blinken.
Das bedeutet, dass Wi-Fi dauerhaft eingeschaltet ist.
Einerseits verbindet sich OTCamera mit deinem Wi-Fi im Büro und du kannst auf OTCamera von deinem Netzwerk aus zugreifen.
Andererseits erstellt OTCamera einen eigenen Wi-Fi Accesspoint.
Die SSID des Accesspoints und das Passwort wurde während der Installation festgelegt.

Die **rote LED** alle fünf Sekunden blinkt bedeutet, dass die Kamera gerade aufzeichnet.
Jedes Mal, wenn die LED blinkt, wird auch ein neuen Vorschaubild erstellt.

Wenn also grün zweimal und gelb und rot jeweils einmal alle fünf Sekunden blinken, ist das der richtige Zustand.

Mit deinem Smartphone oder Tablet kannst du dich jetzt mit dem Wi-Fi Accesspoint verbinden.
Nachdem eine Verbindung mit dem Wi-Fi hergestellt ist, kannst du in einem Browser die IP-Adresse der OTCamera aufrufen,
um die Vorschau angezeigt zu bekommen.
In der Regel ist das [10.10.50.1](http://10.10.50.1).

??? question "Mein Smartphone verbindet sich nicht."
    Manche Smartphones überprüfen, ob über das Wi-Fi ein Internetzugang besteht.
    Wenn das nicht der Fall ist, ist das Smartphone zwar verbunden, aber du kannst nicht auf die Vorschau zugreifen.
    Es hilft, dem Smartphone in den Einstellungen zu sagen, dass du die Verbindung trotzdem nutzen möchtest.
    Oder du kannst deine mobilen Daten ausschalten und damit die Verwendung von Wi-Fi erzwingen.

    Wir benutzen deshalb für unsere Messungen ein eigenes Tablet ohne mobile Daten.

Du solltest jetzt eine Website mit dem Vorschaubild sehen.
Die Website lädt automatisch alle fünf Sekunden neu.
Unter dem Vorschaubild siehst du eine Tabelle mit den wichtigsten Informationen.

!!! tip
    Wenn du schon einige Messungen durchgeführt hast und die Speicherkarte voll ist,
    dann wird irgendwann das älteste Video gelöscht, damit weiter aufgezeichnet werden kann.
    Wir würden aber trotzdem empfehlen, die Videos nach jeder Messung zu löschen.

Ganz oben siehst du einen grünen Balken, wenn alles in Ordnung ist.
Sollte die Kamera nicht aufzeichnen,
die externe Stromversorgung nicht verbunden sein
oder der "24/7" Schalter nicht eingeschaltet sein,
erscheint oben ein gelber oder roter Balken mit einem Hinweis.

!!! tip
    Im Vorschaubild wird am oberen Rand der Kameraname und die aktuelle Uhrzeit angezeigt.
    Kontrolliere das Datum und die Uhrzeit jedes mal.
    Falls die Uhrzeit nicht stimmt, ist wahrscheinlich die Knopfzelle der Echtzeituhr leer.
    Halte im Zweifel dein Handy so ins Bild der Kamera, dass man später die Uhrzeit im Video sehen kann.

Du kannst jetzt mit dem rechten Schalter "24/7" einstellen, ob OTCamera dauerhaft aufzeichnen soll oder nur zu der konfigurierten Tageszeit.

Wenn du den Wi-Fi Schalter ausschaltest, blinkt die gelbe LED schneller und zeigt dir damit, dass sich das Wi-Fi demnächst ausschaltet.
Die Dauer bis es ausgeschaltet wird, lässt sich einstellen und beträgt normalerweise 15 Minuten.

Jetzt kannst du das Außengehäuse schließen. Achte darauf, dass du das USB-Kabel nicht einklemmst.
Du brauchst das Außengehäuse nicht mehr zu öffnen.

!!! tip
    Wir haben bei unseren Messungen immer Ersatzkabel dabei :)

Jetzt kannst du die OTCamera montieren.
Montiere zuerst die Halterung mit dem Kugelkopf.
Kontrolliere ob der Kugelkopf fest sitzt.
Die Schrauben am Kugelkopf sollten festgedreht sein, damit er sich nicht verstellen kann.
Auf der Rückseite des Außengehäuses gibt eine Halterungsplatte, die man auf den Kugelkopf schieben kann.
Die Halterungsplatte wird einer Schraube am Kugelkopf festgeklemmt, damit OTCamera fest mit dem Kugelkopf verbunden ist.

!!! danger
    Achte darauf, dass nichts herunterfällt, niemand verletzt und nichts beschädigt wird.
    Montiere dazu eine Fallsicherung.

Jetzt kannst du die große Schraube am Kugelkopf etwas lose drehen und OTCamera ausrichten.
Mit dem Smartphone kannst du die Ausrichtung kontrollieren.
Am besten machen das zwei Personen.
Eine Person richtet die Kamera aus und die andere überprüft die Vorschau.

Warte immer einige Sekunden, bevor du OTCamera verstellst, da nur alle fünf Sekunden ein Vorschaubild generiert wird.

!!! tip
    Wir richten OTCamera immer so aus, dass kein Himmel zu sehen ist.
    Sonst kann es zu Blendungen kommen und der Verkehr ist nicht mehr zu erkennen.
    Außerdem sollte in allen Richtungen ausreichend viel Platz sein,
    damit OTVision die Trajektorien der Verkehrsteilnehmenden ausreichend früh erkennt.

    Wenn du die Videos bei uns prozessieren lassen willst, dann achte bitte immer auf diese Hinweise.

Wenn alles richtig ausgerichtet ist, kannst du OTCamera jetzt noch mit einem Schloss verschließen.

Kontrolliere auf der Vorschauseite nochmal alle Werte und stelle sicher, dass alles ordnungsgemäß angezeigt wird.

## Abbau

Wenn deine Messung zu Ende ist, kannst du OTCamera wieder demontieren.

Gehe dabei grundsätzlich einfach in umgekehrter Reihenfolge vor.
Achte auch bei der Demontage darauf, dass nichts herunterfallen kann.
Insbesondere beim Öffnen der Schraube am Kugelkopf zum Lösen der Platte kann dazu führen, dass OTCamera herunterfällt.
Achte bitte besonders darauf, dass das nicht passiert.

Wenn alles demontiert ist und du wieder am Boden stehst, kann du das Außengehäuse öffnen und die drei rechten Schalter auf "0" stellen.

Wenn OTCamera noch Strom hat, fährt sie jetzt herunter und zeigt das mit schnellem Blinken der grünen LED an.
Wenn zwischendurch der Akku schon leer geworden ist, hat sich OTCamera bereits selbständig heruntergefahren.
Schalte die drei Schalter trotzdem alle auf "0".

!!! note
    Es reicht, wenn du den "Boot" Schalter auf "0" stellst.
    Wir haben allerdings die Erfahrung gemacht, dass man besser darauf achtet, alles richtig zu schalten,
    wenn man zu Beginn alle Schalter einschaltet und am Ende alle Schalter ausschaltet.
    Dann ist alles wieder in der Ausgangsposition für die nächste Messung,

Wenn die Kamera wieder im Büro ist, schließe die USB-Powerbank und die Kamera an ein Ladegerät an.

## Videos herunterladen

Wenn die Akkus der OTCamera wieder ausreichend voll ist, kannst du die Videos herunterladen.
Dazu gibt es zwei Möglichkeiten:

1. über Wi-Fi und SSH und
2. auf einen USB-Stick.

### Wi-Fi

Schalte OTCamera ein (wie oben beschrieben).
Wenn OTCamera mit dem Wi-Fi im Büro verbunden ist, kannst du über die IP der OTCamera mittels SSH zugreifen.
Das funktioniert ähnlich wie bei der Installation.

Alternativ kannst du dich mit dem Access-Point der OTCamera verbinden und so eine SSH-Verbindung aufbauen.

Die Videos und Logs werden standardmäßig im Home-Verzeichnis unter `~/videos` gespeichert.
Mittels scp oder rsync kannst du alle Videos herunterladen.

### USB

Wenn du einen OTG-USB Adapter in OTCamera eingebaut hast, kannst du die Videos auch auf einen USB-Stick kopieren lassen.

Schalte OTCamera dazu vollständig aus.
Stecke dann einen USB-Stick in den USB-Port von OTCamera und schalte die OTCamera mit dem "Boot" Schalter ein.
OTCamera überprüft beim Hochfahren, ob ein USB-Stick eingesteckt ist.
Wenn das nicht der Fall ist, startet die Aufzeichnungsfunktion.

Jetzt startet OTCamera im USB-Kopiermodus.
Die gelbe LED signalisiert durch Blinken, dass gerade Videos kopiert werden.
Leuchtet die LED durchgehend, ist das Kopieren abgeschlossen.
Zusätzlich leuchtet die grüne LED durchgehend, wenn du den USB-Stick entfernen kannst.

OTCamera kann dann wieder über das Ausschalten vom "Boot" Schalter heruntergefahren werden.

Auf dem USB-Stick befinden sich jetzt alle Videos und eine csv-Datei.
Die csv-Datei gibt einen Überblick über alle Videos auf OTCamera (nicht auf dem USB-Stick).

Wenn du die csv-Datei öffnest, kannst du festlegen, dass bestimmte Videos gelöscht werden sollen.
Ändere dazu einfach die entsprechende Spalte und füge ein `x` oder `true` ein.

Wenn du die Datei speicherst und den USB-Stick wieder an OTCamera steckst,
dann werden die markierten Videos beim nächsten Hochfahren gelöscht.

## Nächste Schritte

Jetzt solltest du alle Videos haben.
Im nächsten Schritt kannst du diese mit OTVision verarbeiten lassen.
