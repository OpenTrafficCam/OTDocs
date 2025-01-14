# Usage UI

## Introduction

OTConfig is a program for configuring video-based traffic analyses (e.g. counts, speed measurements) with the OpenTrafficCam pipeline (OTVision and OTAnalytics). The configuration consists of three steps:

1. Project setup
1. Definition of the traffic flows to be analyzed
1. Export of the configuration file

The results of the OpenTrafficCam pipeline are raw data on the individual traffic movements as well as count values for the individual traffic flows. Further evaluations, such as speed or time requirement analyses, are carried out in downstream processes upon customer request. The relevant information is transmitted individually and any desired aggregations of vehicle classes are agreed individually and subsequently implemented by us.

Traffic flows are defined by using detectors (sections). Each flow consists of exactly one start and one end section (from-to relationship). Sections can be defined in the form of lines with any number of support points as well as areas.

!!! info
    A separate configuration must be created for each camera view. Due to the different positions of the sections and flows, videos with different views cannot be configured at the same time.

## Why OTConfig?

If the configuration and execution of the OpenTrafficCam pipeline (processing or analysis) are not to be carried out in the same step or in the same institution, it must be ensured that the configured pipeline is also executed later as desired. For this purpose, we have developed the OTConfig tool for our customers to make the external processing of videos through our infrastructure as efficient and smooth as possible.

With OTConfig, the customer can specify all the information required for execution and preconfigure the OpenTrafficCam pipeline accordingly. This information is then saved in an otconfig file. This ensures that all relevant information is transferred to us in a structured manner and applied correctly in the OpenTrafficCam pipeline.

!!! info
    The transmitted information is validated again by trained personnel before each execution of the pipeline and, if necessary, checked for plausibility. In particular, the position of the sections is optimized to ensure the best possible result.

## Terminology

Vehicles and pedestrians are detected in the individual frames of the video using [detect in OTVision](...). Each detected object (**Detection**) is represented in a frame by a **Bounding Box**, which is the rectangular area surrounding the detected vehicle or pedestrian together with its classification (e.g., car, bike, pedestrian).

The [tracker in OTVision](...) links consecutive detections, or bounding boxes, to form a **Track**. A track is therefore composed of a series of detections, each with its own classification. Ideally, all detections within a track share the same classification. However, in practical scenarios, a track may include detections with varying classifications (e.g., truck and truck_with_trailer). This typically occurs when only a portion of the vehicle is visible in one frame, while in subsequent frames more of the vehicle or the entire vehicle appears within the frame.

OTAnalytics assigns a single **Track Classification** to each track, as a vehicle can have only one classification in the real world (e.g., a vehicle is either a car or a bus).

A track's trajectory is created by selecting a single representative point from each bounding box associated with the track. This point is called the **Track Point**. The trajectory is formed by connecting the track points collected across successive frames.

The position of the track point within the bounding box can be configured using the **Offset** attribute of sections. This offset is defined separately for the x- and y-axes, with values ranging from 0 to 1. These values determine the relative position of the track point within the bounding box, providing flexibility in track point placement.

Since the offset can be individually configured for each section, tracks intersecting different sections can be finely tuned. This allows precise customization of the trajectory data based on the requirements of each section.

![%TODO% Beispieldarstellung der Offsetauswahl, der Bounding box und der track point Auswahl](...)

An **Event** is generated whenever a track intersects a section. Each event contains detailed information, including the track's identifier, its position in the frame, and the timestamp of the intersection.

As explained in [Flows](#flows), a flow is defined by two sections: a starting section and an ending section. Tracks that intersect both sections of a flow can be assigned to that flow. To achieve this, the events belonging to a track are sorted chronologically based on their time of occurrence. The pair of events with the longest time interval between them is used to assign the track to the flow corresponding to the sections of both events. The assignment of a track to a flow is called **Track Assignment**.

## User Interface

The user interface is divided into four areas, the configuration bar, the workspace, the visualization layers and the filter area. 

The configuration bar is divided into three sections. In the top section - Project - the metadata for the project are specified and otconfig files are saved or loaded. In the Tracks/Video section input files can be added. Track files can only be added while video files can be added and removed. An overview of the loaded video files is displayed. Sections and flows are created, edited and removed in the Sections/Flows section. The export of the analysed data is started in the Analysis section.

The tracks and frames of the video can be visualized in the workspace. This is also the area in which the geometry of sections can be created or edited. A few statistics about the visualized tracks are shown right below the visualization in the Track Statistics area. The visualized tracks can be customized using different visualization layers. The amount of tracks to be shown can be configured using the filter settings below the workspace. 
 
![User Interface of OTConfig](usage-ui/user-interface.png)

!!! info
    If there are several tabs (e.g. Sections, Flows) in a section, you can switch between them by clicking on them. The active tab is highlighted in green.

The first image of the currently active (or selected) video is displayed in the workspace. The sections can be drawn in this image.

## Project Setup

The project must first be named. The project name is entered in the corresponding Name field. The start time (date and time) of the first video must then be entered in the corresponding Start date fields. It is possible to enter in ISO 8601 format (YYYY-MM-DD) or German date format (DD.MM.YYYY).

!!! info
    OTConfig assumes that all selected videos are contiguous in time. If the videos to be processed have a time gap (e.g. videos from three days from 6:00 a.m. to 10:00 p.m.), several projects with chronologically contiguous videos must be created.
    
    It is recommended to choose a unique name (e.g. name of the measuring point, camera number; or a combination of several unique details).

The videos to be processed must then be selected and loaded into OTConfig. The respective videos can be added using the Add button. After clicking, the file browser opens and the videos can be selected. Several videos can be selected at the same time. The selected video is removed from the configuration using the Remove button.

!!! info
    Added videos are displayed in alphabetical order in the “Videos” overview panel and are later processed in this order. The videos should therefore be named in such a way that the chronological order matches the alphabetical order.

When a video is clicked in the overview in the configuration bar, the first image of the video is displayed as the background image. This allows you to check whether all videos have been selected correctly.

### Save to configuration file (otconfig file) 

Once all the required videos have been added and all the flows have been created, the project is saved.

1. Click on the Save as... button in the Project section of the configuration bar.
1. Select a suitable file name in the file browser and save it in the same folder as the videos. 

!!! info
    We recommend regularly saving the progress of the project while it is still being processed. This prevents possible loss of data. The Save button automatically saves the file to the last selected location. If it is colored orange, changes have been made.

## Definition of the traffic flows to be analyzed

A traffic flow depicts the directional travel relationship between two areas in the video image. The areas are defined with so-called sections. A flow always consists of two sections (a start section and an end section). In order to define flows, the sections must first be created. The flows can then be assigned to the created or edited sections.

### Sections

Sections can consist of any number of support points (shown as a circle). They are drawn directly in the background image in OTConfig. To do this, the Sections tab must first be selected in the Sections/Flows section.

!!! info
    Line sections and area sections can be created in OTConfig. If no occupancy durations (e.g. of parking areas) are detected, but only crossings, line sections should always be selected. 
    
    The following example is limited to line sections. However, the procedure described can also be applied to area sections. The only difference is that the polygon is automatically closed when the add mode is exited.

#### Add Sections

A new line section is added in the following steps:

1. Left-click on the Add line button, which starts the add mode. 
1. Set the first point by left-clicking at the correct position in the video image. The point is now fixed. Further points can be added to the section by moving the mouse and left-clicking again. A section must consist of at least two points.
1. Once the desired length and shape of a section has been reached, right-click or press the Enter key to exit Add mode.
1. Pressing the Escape key cancels Add mode without saving the previously created section.
1. A pop-up window opens. Enter the name for the section in this window and confirm. The name is reused in the analysis.

%TODO%: Infobox innerhalb der Aufzählung?
!!! failure
    A name can only be assigned once, duplicate names of several sections are not possible. We recommend using the approximate compass direction of the geographical location (e.g. north, north-east) as the name of the section.

1. The created section appears with the assigned name in the Sections subsection.
1. Repeat the process to add further sections.
 
![Add Sections](usage-ui/add-section.png)

#### Change the geometry of a section

The geometry of sections that have already been created can be changed using the following procedure:

1. First select the section to be changed in the list. 
1. Then start the change mode by left-clicking on the Edit button. The breakpoints are now visible. 
1. Support points can now be selected by left-clicking and reset as in add mode. The + button can be used to add another support point.

The selected point “sticks” to the mouse pointer until the left mouse button is pressed. The old geometry is displayed as a dashed reference.

1. Right-click to exit change mode and save the changes.
1. Pressing the Escape button exits the change mode without saving the changes to the geometry. 

#### Change the name of a section

The name of a section can be changed by clicking on the Properties button. To do this, the desired section must first be selected from the list.

#### Remove a section

A section can be removed by clicking on the Remove button. To do this, the desired section must first be selected in the list and must not be assigned to a flow.

### Flows

A flow always consists of exactly two sections: a start section and an end section. To edit flows, the Flows tab must first be selected in the Sections/Flows section.

#### Add Flows

A new flow is added in the following steps:

1. Left-click on the Add button. A pop-up window opens. The appropriate sections can be selected from the drop-down menu. 
1. The start point of the flow is defined as the First section.
1. The end point of the flow is defined as the second section.
1. The name is automatically set in the Name field after selecting the two sections. This can be changed as required. The name is reused in the analysis.

!!! info
    A name can only be assigned once, duplicate names of several flows are not possible.

    Alternatively, flows can also be generated automatically using the Generate button. Flows are then generated for all possible combinations of start and end sections. The standard naming convention is Name_Startsection --> Name_Endsection.

![Add Flows](usage-ui/add-flow.png)

#### Edit Flows

To edit a flow, it must first be selected in the list. Then left-click on the Properties button to open the same pop-up window as when creating a flow. The desired changes can now be made. 

#### Remove Flows

To remove a flow, it must first be selected in the list. Left-click on the Remove button to remove the selected flow.

## Visualization layers

Visualization layers are used to refine traffic analysis by offering specific views of the data. Tracks are consistently displayed in the same color, which is determined by the track classification. The visualization layers are organized into groups.

### Background 

This layer shows a frame of the video as a background image.
The currently shown frame can be configured using the filter.
If a filter is set, the frame at the end date is shown.
Otherwise, the first frame of the selected video is shown.

### Show tracks

This group shows the trajectory of tracks. The tracks to be shown can vary in different flavours.

- **All** All tracks are shown.
- **Intersecting sections** Tracks intersection at least one of the selected sections are shown.
- **Not intersecting sections** Tracks intersecting none of the selected sections are shown.
- **Assigned to flows** Tracks assigned to at least one selected flow are shown.
- **Not assigned to flows** Tracks not assigned to one of the selected flows are shown.

### Show start and end points

This group shows the start and end points of tracks. The tracks to be shown can vary in the same flavors as described in [Show tracks](#show-tracks).

### Show detections of current frame

This group visualizes the detections of a single frame in different flavors.

- **Bounding Box** Show the bounding boxes of all detections in the currently visible frame. 
- **Track point of current frame** Show the track points of all detections in the currently visible frame.

### Show events

- **Current filter** Show track points of all events within the filter range.
- **Current frame** Show all events within the range of the current filter.

## Filter

As the number of hours analyzed increases, distinguishing individual tracks in the visualization becomes increasingly difficult. Filters enable you to limit the number of displayed tracks, making the visualization more manageable and focused.

!!! info
    Filters are applied exclusively to the visualization in the workspace and to the calculation of the track statistics displayed below the visualization. The analysis and data export always include all loaded tracks, regardless of any applied filters.

### Filter by Time

Filter tracks based on time and date. All tracks with a start time on or after the start date and an end time on or before the end date will remain in the dataset.
The **<** and **>** buttons located to the right of the filter button allow you to shift the filter forward or backward by the same duration. For more precise adjustments, the **<** and **>** buttons within the Date Filter Control panel enable finer control over the filter's position.

![%TODO% Filter setzen und Verschieben des Filters](...)

### Filter by Classification

Filter tracks based on the track classification.

## Analysis / Export

!!! info
    We recommend using the various layers described in [Visualization layers](#visualization-layers) to gain detailed insights into the data before exporting it.

### Export Eventlist

Events can be exported into a single file in one of the following formats: CSV, Excel, or otevents.

- **CSV**: Contains the event data in a format that can be read by many software products.
- **Excel**: Includes the event data along with additional information about the sections used to generate the events.
- **otevents**: A bzip2-compressed JSON file that contains the event data, additional metadata collected during processing, and details about the sections used to generate the events.

The export includes the following values for each event:

| Value           | Datatype  | Description                                                   | Example                                       |
|-----------------|-----------|---------------------------------------------------------------|-----------------------------------------------|
| road_user_id    | string    | Unique identifier for the road user                           | 5f8cd584-f490-4fec-afd0-b55ebf39ab4e#0#102341 |
| road_user_type  | string    | Track classification of the road user (e.g., car, pedestrian) | car                                           |
| hostname        | string    | Name of the camera or device capturing the data               | OTCamera19                                    |
| occurrence      | string    | Timestamp of the event in date and time format                | 2023-05-24 11:45:00.000000                    |
| frame_number    | int       | Frame number of the video corresponding to the event          | 1                                             |
| section_id      | string    | Identifier for the section                                    | 1                                             |
| event_type      | string    | Type of event (e.g., enter-scene, leave-scene)                | enter-scene, leave-scene, enter-section       |
| video_name      | string    | Name of the video file where the event was recorded           | OTCamera19_FR20_2023-05-24_11-45-00.mp4       |
| occurrence_sec  | timestamp | Time of the event in seconds since the epoch                  | 1684928700.0                                  |
| coordinate_px_x | float     | X-coordinate of the road user in pixels                       | 142.60128784179688                            |
| coordinate_px_y | float     | Y-coordinate of the road user in pixels                       | 199.48948669433594                            |
| vector_px_x     | float     | X-component of the road user's movement vector                | -0.2536773681640625                           |
| vector_px_y     | float     | Y-component of the road user's movement vector                | 0.075958251953125                             |
| section_name    | string    | Name of the section where the event occurred                  | north                                         |
| occurrence_day  | string    | Day of the event in date format                               | 2023-05-24                                    |
| occurrence_time | string    | Time of the event in time format                              | 11:45:00.000000                               |

### Export Traffic Volume

Traffic volume can be exported as a CSV file, which can be easily imported into your preferred program. You can specify the start and end date and time, as well as the interval for grouping road users. The CSV file includes the following values:

| Value                 | Datatype | Description                                                           | Example             |
|-----------------------|----------|-----------------------------------------------------------------------|---------------------|
| start time            | string   | Timestamp indicating the start of the interval                        | 2023-05-24 11:45:00 |
| start occurrence date | string   | Date at the start of the interval                                     | 2023-05-24          |
| start occurrence time | string   | Time at the start of the interval                                     | 11:45:00            |
| end time              | string   | Timestamp indicating the end of the interval                          | 2023-05-24 12:00:00 |
| end occurrence date   | string   | Date at the end of the interval                                       | 2023-05-24          |
| end occurrence time   | string   | Time at the end of the interval                                       | 12:00:00            |
| classification        | string   | The track classification of the road user (e.g., car, bicyclist)      | bicyclist           |
| flow                  | string   | Direction of traffic flow, specifying origin and destination sections | south --> east      |
| from section          | string   | Name of the section where the traffic originated                      | south               |
| to section            | string   | Name of the section where the traffic was directed                    | east                |
| count                 | int      | Number of road users recorded during the interval                     | 1                   |

### Track Statistics

This is a CSV export of the track statistics show below the workspace.