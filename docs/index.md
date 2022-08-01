# Welcome to OpenTrafficCam

![OpenTrafficCam Overview](OpenTrafficCam_1200.svg)

> Open**Traffic**Cam makes analyzing traffic easier, faster and more efficient.

Welcome to **OpenTrafficCam**, the only fully integrated open source workflow for video-based recording
and automated analysis of road traffic.

This site will cover all the documentation in one place.

Check out our [GitHub page](https://github.com/OpenTrafficCam) for downloads and code.

## Motivation

Thanks to the rapid development of computer hardware and machine learning in the last decade,
automatic object detection is state of the art in many business sectors.
Road traffic, on the other hand, is still often surveyed manually at great expense.
There exist tools that optimize some of the processing steps,
but they can hardly be used without programming skills or they cause significant costs.
This is why research and planning still have to be conducted with minimal data or sometimes without any at all.
This lack of data primarily affects sustainable modes of transportation such as walking and cycling.

OpenTrafficCam aims to address this gap for a stronger data base
for transportation planning, policy and research.
In doing so, we ourselves benefit substantially from other open source projects.
Consequently, we also publish large parts of OpenTrafficCam as open source hardware and software
under the [GNU General Public License v3.0](https://github.com/OpenTrafficCam/OTVision/blob/master/LICENSE).
This also helps in efficiently using limited public resources for road infrastructure planning and research
and in avoiding substantial vendor locks.
So all transport professionals and anyone else interested are very welcome to try OpenTrafficCam.

!!! hint "You want to support?"

    Developing, maintaining and organizing open source requires quite a lot of time and money.
    But fortunately, there are several ways to support us:

    - Traffic engineers can help by spreading the word and submitting questions, bugs or feature ideas as issues
        in the corresponding GitHub repositories of the modules
        [**OTCamera**](https://github.com/OpenTrafficCam/OTCamera),
        [**OTVision**](https://github.com/OpenTrafficCam/OTVision),
        [**OTAnalytics**](https://github.com/OpenTrafficCam/OTAnalytics) or
        [**OTLabels**](https://github.com/OpenTrafficCam/OTLabels).
    - Researchers and developers can support by [**contributing code**](https://opentrafficcam.org/contribute/)
        or [**contacting us**](mailto:team@opentrafficcam.org) for scientific collaboration.
    - Users, such as municipalities or engineering companies, can contact us to fund specific enhancements to meet their use case and thus help all other users.

## How it works

OpenTrafficCam consists of multiple modules. The core is composed of three:

1. The [**OTCamera**](https://opentrafficcam.org/OTCamera/) hardware itself to record videos,
1. [**OTVision**](https://opentrafficcam.org/OTVision/), a collection of algorithms to generate trajectories
of objects (road users) based on the videos and
1. [**OTAnalytics**](https://opentrafficcam.org/OTAnalytics/) to gather traffic measures based on these trajectories.

Each of the three modules comes with easy installation, a basic graphical user interface and a detailed user documentation.
The Open Source version covers the most common use cases of video-based traffic surveying,
such as traffic counts and speed measurements.

In addition to the three main modules, with [**OTLabels**](https://opentrafficcam.org/OTLabels/)
we will provide a set of labelled images of German road users and vehicles along with algorithms
to train object detection models on custom data sets.

![framework](framework_OTC_website.png)

As described on the following pages of this documentation, some manual work, patience and basic skills
are required to assemble OTCamera.
And in order to regularly extract trajectories from videos using OTVision or train your own custom object detection models
using OTLabels, you will need a powerful machine with a strong graphics card.

!!! check "Don´t want to deal with it? We got your back!"
    We offer various services related to OpenTrafficCam:

    :material-video-wireless: Selling and renting OTCameras

    :material-image-search: Processing and analyzing your videos

    :material-check-network: Setting up the OpenTrafficCam pipeline in your environment

    :material-monitor-screenshot: Onboarding and support to get the most out of OpenTrafficCam

    :material-video-marker: Conducting whole traffic surveys for you
    
    :material-cloud-braces: Developing features beyond the current open source version

    :material-account-supervisor: Consulting on traffic analysis, modeling and optimization

    [:octicons-mail-16: Contact us for more information](mailto:team@opentrafficcam.org){ .md-button }

<!-- TODO #49 Short description about Usecases -->

## Who we are

OpenTrafficCam is coordinated and lead developed by the German startup [**platomo**](https://platomo.de/),
a team of traffic engineers, software and hardware developers.
The core team also includes traffic and photogrammetry researchers from the
[**TU Dresden**](https://tu-dresden.de/bu/verkehr/ivs/ivst).

[![platomo](platomo_logo_black_h50.png){style="padding: 1.2em"}](https://platomo.de/)
[![TU Dresden](TUD_Logo_HKS41_h50.png){style="padding: 1.2em"}](https://tu-dresden.de/bu/verkehr/ivs/ivst)

OpenTrafficCam is funded by the **German Federal Ministry for Digital and Transport**
as part of the research initiative **mFUND**.

![mFUND](mFUND_Logo_Claim_sRGB_h175.PNG){style="padding: 1.2em"}
![German Federal Ministry for Digital and Transport](BMVI_Fz_2017_WebSVG_de.svg){style="padding: 1.2em"}
