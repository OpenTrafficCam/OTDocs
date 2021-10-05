# First Use

## Load Video

OTAnalytics provides a simple and classic Point-and-Click-Userinterface. Your first step always should be to load the previous processed videofile in the most common formats such as mkv or mp4 by clicking on the "load video"-button. The chosen filename will be inserted in the upper left listbox and a canvas with the first videoframe will be created. Width and height of the canvas depend on the videoresolution.


## Load and select Tracks

Your next step should be to import the output-file from [**OTVision**](https://github.com/OpenTrafficCam/OTVision). This file contains framewise information about vehicle class, position and size in pixel of detected objects. With this information OTAnalytics can easily calculate bounding boxes and driven tracks. After the import objects ids will be displayed in die middle right listbox. You can either select multiple objects or hit the "display all tracks" to see wanted tracks on canvas. Different colors represent different vehicle classes.


## navigate through video

To plausibly if bounding boxes, tracks and video correspond to another you can scroll through the video via mousewheel or press the "play/rewind"-button. If correct, bounding boxes should overlay vehicles, pedestrians and cyclist.


![add_load_show](https://user-images.githubusercontent.com/75123353/135863704-8d684d91-a774-470f-9f6b-18ef59d43a3b.gif)

