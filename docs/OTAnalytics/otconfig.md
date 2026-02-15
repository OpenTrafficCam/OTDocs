# OTConfig

OTConfig is a program for configuring video-based traffic analysis (e.g. traffic counts, speed measurements) with the OpenTrafficCam pipeline (OTVision and OTAnalytics).
It has a subset of the functionality OTAnalytics has.
The configuration consists of three steps:

1. [Project setup](usage/usage-ui.md#setup-the-project)
1. [Definition of the traffic flows to be analyzed](usage/usage-ui.md#flows)
1. [Export of the configuration file](usage/usage-ui.md#save-and-open-the-project)

The results of the OpenTrafficCam pipeline are raw data on the individual traffic movements as well as count values for the individual traffic flows.
Further evaluations, such as speed or time requirement analyses, are carried out in downstream processes upon customer request.
The relevant information is transmitted individually and any desired aggregations of vehicle classes are agreed individually and subsequently implemented by platomo.

Traffic flows are defined by using detectors (sections).
Each flow consists of exactly one start and one end section (from-to relationship).
Sections can be defined in the form of lines with any number of support points as well as areas.

!!! info

    A separate configuration must be created for each camera view.
    Due to the different positions of the sections and flows, videos with different views cannot be configured at the same time.

## Why OTConfig?

If the configuration and execution of the OpenTrafficCam pipeline (processing or analysis) are not to be carried out in the same step or in the same institution,
it must be ensured that the configured pipeline is also executed later as desired.
For this purpose, we have developed the OTConfig tool for our customers to make the external processing of videos through our infrastructure as efficient and smooth as possible.

With OTConfig, the customer can specify all the information required for execution and preconfigure the OpenTrafficCam pipeline accordingly.
This information is then saved in an otconfig file.
This ensures that all relevant information is transferred to us in a structured manner and applied correctly in the OpenTrafficCam pipeline.

!!! info

    The transmitted information is validated again by trained personnel before each execution of the pipeline and, if necessary, checked for plausibility.
    In particular, the position of the sections is optimized to ensure the best possible result.
