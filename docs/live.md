---
title: LIVE
hide:
  - navigation
#  - toc
---

# OpenTrafficCam LIVE Hoyerswerda

## Untersuchungsbereiche

Das Reallabor umfasst zwei Untersuchungsbereiche in der Neustadt Hoyerswerdas.

<iframe width="100%" height="500px" frameborder="0" allowfullscreen allow="geolocation" src="//umap.openstreetmap.de/de/map/reallabor-hoyerswerda_43891?scaleControl=false&miniMap=true&scrollWheelZoom=false&zoomControl=true&editMode=disabled&moreControl=false&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=null&onLoadPanel=none&captionBar=false&captionMenus=false&datalayers=566666d4-31ed-4285-8191-6cb2ddf2ec61&captionControl=null#15/51.4438/14.2641"></iframe>

Der Untersuchungsbereich "Neustadt Ost" umfasst folgende Messstellen:

- Lichtsignalanlage Knotenpunkt Claus-vonStauffenberg-Straße / Maria-Grollmuß-Straße / Erich-Weinert-Straße / Käthe-Niederkirchner-Straße
- Zufahrt zu dieser Lichtisgnalanlage aus Richtung Osten (Maria-Grollmuß-Straße)
- Ein-/Ausfahrt des Parkplatzes zum Einkaufscenter "Treff 8"
- Bushaltestelle "Klinikum"
- Fugßgänger-Lichtsignalanlage zwischen "Lausitzer Seenland Klinikum" und Einkaufscenter "Treff 8"

![Untersuchungsbereich Hoyerswerda Neustadt Ost](assets/img/reallabor_hoy/Hoyerswerda_Untersuchungsbereiche_1.png){ width="500"}

Der Untersuchungsbereich "Neustadt West" umfasst folgende Messstellen:

- Lichtsignalanlage Knotenpunkt B97 Elsterstraße / Albert-Einstein-Straße / Alte Berliner Straße
- Bushaltestelle "Albert-Einstein-Straße" inklusive Verkehrsinsel

![Untersuchungsbereiche Hoyerswerda Neustadt West](assets/img/reallabor_hoy/Hoyerswerda_Untersuchungsbereiche_2.png){ width="500"}

## Technische Umsetzung

Der Straßenverkehr wird mit **OTCamera** aufgezeichnet und die Videostreams werden per **Mobilfunk (LTE/5G)** an das Rechenzentrum der **TU Dresden** übertragen.
Dort erfolgen in Echtzeit mit **OTVision** KI-Detektion und Tracking sowie mit **OTAnalytics** die Bestimmung von Verkehrskennwerten.
Die ermittelten Informationen werden per **Web-Dashboard** visualisiert und stehen für **Forschung, Entwicklung und lokale Verkehrsplanung** zur Verfügung.

**Perspektivisch** sollen die Live-Informationen für Forschung und Entwicklung im Bereich **intelligentes Verkehrsmanagement** verwendet werden (zum Beispiel dynamische LSA-Steuerung).

**Das System im Überblick:**

- 🎥 **Erfassung** permanent und DSGVO-konform mit **OTCamera**
- 📡 **Datenübertragung** via LTE/5G in Echtzeit  
- ⚙️ **Prozessierung** zentral am Rechenzentrum der TU Dresden mit **OTVision** und **OTAnalytics**
- 📊 **Visualisierung** via Web-Dashboard mit aktueller Verkehrslage
- 💾 **Speicherung** für Forschung und Verkehrsplanung  
- 🔜 **Perspektivisch** Forschung und Entwicklung im Bereich Echtzeit-Verkehrsmanagement

!!! info "Übersicht der technischen Implementierung"

    ![Technische Implementierung](assets/img/reallabor_hoy/Hoyerswerda_technische_Implementierung.png)

## Beteiligte

<div class="grid cards" markdown>

-   __Fördergeber__

    ---

    ![Logo Bundesministerium für Wirtschaft](assets/img/logo_gefoerdert_durch_BMWE.png)

    ![Logo Land Sachsen](assets/img/Logo_Sachsen_modern.png)

-   __Fördernehmer und Auftraggeber__

    ---

    ![Logo TU Dresden](assets/img/tud_logo.png)

-   __Auftragnehmer__

    ---

    ![Logo platomo GmbH](assets/img/platomo_logo.png)

-   __Kommunaler Partner__

    ---

    ![Logo Hoyerswerda](assets/img/reallabor_hoy/hoyerswerda_logo.png)

</div>

## Meilensteine

??? success "April 2025: Projektstart"

    Im **April 2025** begann das Projekt zur Weiterentwicklung von OpenTrafficCam zu einem Live-System.

???+ success "Juni 2025: Kickoff und Testmessung"

    Im **Juni 2026** fanden das Kickoff mit der Stadt Hoyerswerda und eine temporäre Testmessung im Untersuchungsbereich "Hoyerswerda Neustadt Ost" mit 21 Kamerasystemen statt.

    !!! impressions "Impressionen"

        <div class="grid cards" markdown>

        -   <figure markdown="span">
            ![Image title](assets/img/testmessung_hoyerswerda_install_cams.png){ width="400" }
            <figcaption>Anbringung OTCameras</figcaption>
            </figure>

        -   <figure markdown="span">
            ![Image title](assets/img/testmessung_hoyerswerda_cams.png){ width="400" }
            <figcaption>Montierte OTCameras</figcaption>
            </figure>

        -   <figure markdown="span">
            ![Image title](assets/img/reallabor_hoy/SZ_Pressebild_Kickoff_Regine_Michael.avif){ width="400" }
            <figcaption>Kickoff 1/2 (Quelle: Wochenkurer/Peter Aswendt)</figcaption>
            </figure>

        -   <figure markdown="span">
            ![Image title](assets/img/reallabor_hoy/SZ_Pressebild_Kickoff_Armin_Michael_Martin.avif){ width="400" }
            <figcaption>Kickoff 2/2 (Quelle: SZ/Juliane Mietzsch)</figcaption>
            </figure>

        </div>

    !!! news "Presseberichte"

        [Radio Lausitz: "Hoyerswerda wird zum Labor für Verkehrsforscher"](https://www.radiolausitz.de/beitrag/titel-10-870898/)

        [Wochenkurier: "Smarter Verkehr in Hoyerswerda"](https://www.wochenkurier.info/landkreis-bautzen/artikel/smarter-verkehr-in-hoyerswerda)

        [Sächsische Zeitung: "Verkehrsforscher überwachen die Klinikums-Kreuzung in Hoyerswerda"](https://www.saechsische.de/lokales/bautzen-lk/hoyerswerda/mit-kameras-an-laternen-verkehrsforscher-ueberwachen-klinikums-kreuzung-in-hoyerswerda-SSTDLWW2PVG5LAD6PSPVZL3EWY.html)

        [Lausitzwelle: "Kameras beobachten Verkehrslage"](https://lausitzwelle.de/hoyerswerda-kameras-beobachten-verkehrslage/)

        <iframe
            src="https://www.youtube.com/embed/sOBw3qL1ojY"
            title="YouTube video player" frameborder="0"
            style="width: 50%; aspect-ratio: 16 / 9; border: none;"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            allowfullscreen>
        </iframe>

## Ausblick

Die Entwicklung von OpenTrafficCam LIVE soll bis Ende 2026 abgeschlossen sein.

Dann wird das Reallabor Hoyerswerda in Betrieb genommen und für Forschungsprojekte an der TU Dresden und weiteren Hochschulen zur Verfügung stehen.
Die erfassten Daten und Kennwerte werden außerdem für die Verkehrsplanung in der Stadt Hoyerswerda verwendet.

OpenTrafficCam kann darüber hinaus als Live-System für verschiedene Anwendungsfälle in weiteren Kommunen oder Bundesländern eingesetzt werden.

[Kontaktieren Sie uns](#){ .md-button .md-button--primary }
