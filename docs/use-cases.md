---
title: Use Cases
hide:
  - navigation
  - toc
---

OpenTrafficCam ist das einzige Open Source Gesamtsystem zur automatischen Analyse von Verkehr.
Entwickelt von Informatikern (ja bisher nur Männer :() und Verkehrsingenieur:innen für Verkehrsingenieur:innen.
#less-sales-more-truth #lessbullshitbingo
Die Verkehrsanalyse mit OpenTrafficCam ist in drei aufeinander abgestimmte Module unterteilt.
Die Module können auch einzeln eingesetzt werden.
Das mobile Kamerasystem OTCamera zeichnet datenschutzkonform Verkehrsvideos auf.
Die Software OTVision detektiert Verkehrsteilnehmende in Videos von vielen gängigen Verkehrskameras - nicht nur von OTCamera.
OTAnalytics analysiert die Bewegungen der detektierten Verkehrsteilnehmenden und aggregiert sie zu verkehrlichen Kenngrößen wie Verkehrsstärken, Zeitlücken, Geschwindigkeiten, …

## Datenschutz

Durch bewusste Fokussierung auf den Nahbereich und einen typischerweise großen Abstand zu den Verkehrsteilnehmenden (> 3m)
werden Verkehrsteilnehmende nur unscharf aufgezeichnet.
In Kombination mit einer geringen Auflösung werden typische Datenschutzprobleme, wie erkennbare Gesichter oder Kennzeichen, gelöst.
Die eingesetzten Modelle zur Detektion der Verkehrsteilnehmenden berücksichtigen dies ohne wesentliche Einbußen bei der Erfassungsgenauigkeit.
Zusätzlich kann das Sichtfeld individuell an den aufzuzeichnenden Ort angepasst werden, um nur relevante Bereiche aufzuzeichnen.

[Tell Me More](pricing.md)

## Kurzzeitzählung

OpenTrafficCam kann zur Kurzzeitzählung an Knotenpunkten und Querschnitten eingesetzt werden.
Die Kameras werden an vorhandener Infrastruktur montiert und anschließend Knotenstromzählungen und Querschnittszählungen durchgeführt.
Der automatisierte Prozess ersetzt oder ergänzt geschultes Zählpersonal.
Die Zähldaten werden in gut strukturierten und übersichtlichen CSV- und Excel-Datensätzen exportiert.
Dabei lässt sich die zeitliche Aggregierung frei einstellen (z.B. 5 oder 15 Minuten).
Das ermöglicht eine einfache Visualisierung der Daten und eine effiziente Integration in bestehende Prozesse der Ingenieurbüros und Kommunen.
Mit den offenen Modellen lassen sich Fuß-, Rad-, Leicht- und Schwerverkehr unterscheiden.
Mit den Pro-Modellen von platomo wird die Erkennungsgenauigkeit- und -rate deutlich verbessert und es werden insgesamt 18 verschiedene Klassen erkannt.
Diese lassen sich z.B. zu Klassen nach RLS-19 oder TLS-2012 8+1 Klassen (inkl. Fuß- und Radverkehr) zusammenfassen.
OpenTrafficCam kann auch für Videos verwendet werden, die nicht mit OTCamera aufgezeichnet wurden.

[Tell Me More](pricing.md)

## Geschwindigkeitsmessung

Unser Produkt basiert auf und ist Open Source, denn wir glauben an Offenheit, Zusammenarbeit und Innovation.
Durch die Verwendung von Open Source-Technologien ermöglichen wir nicht nur eine transparente Entwicklung, sondern fördern auch die Teilnahme der Gemeinschaft.
Dies schafft Vertrauen, Sicherheit und ermöglicht individuelle Anpassungen.
Mit Open Source gestalten wir eine kollaborative und zukunftsorientierte Lösung für unsere Nutzenden.

[Tell Me More](pricing.md)
