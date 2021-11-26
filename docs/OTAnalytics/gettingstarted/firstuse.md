# First Use

## Load Video

OTAnalytics provides a simple and classic Point-and-Click-Userinterface.
Your first step should be to load a videofile in the most common formats such as mkv or mp4 by clicking on the "load video"-button.
The chosen filename will be inserted in the upper left listbox and a canvas with the first videoframe will be created.
You can navigate through the video by either by scrolling, sliding or simply playing the video.

## Load and select Detections

With click on the "Load tracks"-button a dialogue window pops up which asks for the trackfile from [**OTVision**](https://github.com/OpenTrafficCam/OTVision).
This file contains framewise information about vehicles such as class, position and size in pixel of detected objects.
With this information OTAnalytics can calculate bounding boxes and driven tracks and colors them dependent on vehicleclass.
After the import object IDs and object class will be displayed in die middle right listbox.
You can display a single track or multiple tracks by selecting the object IDs or you can display all tracks at once.

## First glance

After importing all necessary files.
Its important to check if chosen data correspond to eachother.
The easiest way to do this, is to play, slide or scroll through the video.
If correct, bounding boxes should overlay vehicles, pedestrians and cyclist.
The bounding boxes are annotated with object class and confidence factor.
Its also possible to live draw tracks.

![OTAnalytics_first_glance](https://user-images.githubusercontent.com/75123353/142622658-e4fd2bfa-3274-4920-addd-684d9396b365.gif)
