# Features

> The **brain** of OpenTrafficCam.

[OTAnalytics](https://github.com/OpenTrafficCam/OTAnalytics) is a set of self-developed algorithms to gather traffic measures based on trajectories of road users. It provides a user-friendly graphical interface for configuring analyses, extracting valuable insights from your data, and exporting the results efficiently.

## Key features

- Configuration of traffic analyses using sections and flows
- Generation of traffic counts and flow matrices
- Export of event lists for detailed analysis
- Visualization of tracks, events, and traffic data
- Various visualization layers and filters
- Runs on Windows, macOS, and Linux

## Domain Elements

OTAnalytics works with the following key concepts:

- **Tracks**: Trajectories of road users, composed of a series of detections
- **Track Points**: Representative points from each bounding box, forming the trajectory
- **Sections**: Digital equivalents of physical detectors for traffic measurement
- **Events**: Generated when a track's trajectory intersects a section
- **Flows**: Traffic flows defined by a starting section and an ending section
- **Track Assignments**: Assignment of tracks to flows based on events

## Content of documentation

- [Installation](installation.md): How to install OTAnalytics on different operating systems
- [Usage UI](usage-ui.md): Detailed guide on how to use the graphical user interface

Most of the code is developed by the OpenTrafficCam contributors
(based on Python libraries like [NumPy](https://numpy.org/),
[pandas](https://pandas.pydata.org/),
[tkinter](https://docs.python.org/3/library/tkinter.html)
and [PyAV](https://github.com/PyAV-Org/PyAV)).

!!! info "Current status"

    OTAnalytics is actively maintained and developed. The latest version offers a comprehensive set of features for traffic analysis.

    It is tested on Windows, macOS, and Linux.

    For the latest updates and releases, visit the [GitHub repository](https://github.com/OpenTrafficCam/OTAnalytics/releases/latest).
