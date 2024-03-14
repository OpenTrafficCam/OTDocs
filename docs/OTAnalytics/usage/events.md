# Obtain Traffic Metrics

The main purpose of OpenTrafficCam is to automatically obtain traffic metrics from
video footage.

For this purpose, the "Generate event list" button will generate a list of events,
where each event represents a road user crossing a section.
For each event, the section name, the road user class, the time and the pixel
coordinates will be saved.

An file `_events.csv` is exported.
You can aggregate these events to determine traffic counts or other traffic metrics.

!!! warning "Early prototype"

    The currently available version of OTAnalytics described in this
    documentation is in early prototype stage.
    This version works and offers an impression of the functionality.  

    It is partially tested on Windows 10.

    We are currently working on a complete re-implementation
    for a stable release.
    It will also be tested on Mac and Linux.
    
    Stay tuned :)
