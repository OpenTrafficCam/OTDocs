# First Use

## Load Video

OTAnalytics provides a simple and classic Point-and-Click-Userinterface. Your first step always should be to load the previous processed videofile in the most common formats such as mkv or mp4 by clicking on the "load video"-button. The chosen filename will be inserted in the upper left listbox and a canvas with the first videoframe will be created. 


## Load and select Tracks

Your next step should be to import the output-file from [**OTVision**](https://github.com/OpenTrafficCam/OTVision). This file contains framewise information about vehicle class, position and size in pixel of detected objects. With this information OTAnalytics can easily calculate bounding boxes and driven tracks. After the import object IDs and object class will be displayed in die middle right listbox. You can either select multiple objects or hit the "display all tracks" to see wanted tracks on canvas. Different colors represent different types of vehicles.


## Check plausibility

After importing all necessary files. Its important to check if chosen date correspond to eachother. The easiest way to do this, is to play, slide or scroll through the video. If correct, bounding boxes should overlay vehicles, pedestrians and cyclist. The bounding boxes are annotated with object class and confidence factor.


<!-- ![add_load_show](https://user-images.githubusercontent.com/75123353/135863704-8d684d91-a774-470f-9f6b-18ef59d43a3b.gif) -->

