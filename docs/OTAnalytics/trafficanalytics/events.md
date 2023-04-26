# Obtain traffic metrics

The main purpose of OpenTrafficCam is to automatically obtain traffic metrics from
video footage.

For this purpose, the "autocount" button will generate a list of events, where each
event represents a road user crossing a section.
For each event, the section name, the road user class, the time and the pixel
coordinates will be saved.

An eventlist with filetype `_events.csv`  is exported in comma-separated `CSV` format.
You can aggregate these events to determine traffic counts or other traffic metrics.

!!! warning "Early prototype"

    The version of OTAnalytics described in this documentation is in early
    prototype stage.

    We are currently working on a stable release. Stay tuned :)
