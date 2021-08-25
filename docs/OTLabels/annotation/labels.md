# Labels

The COCO dataset and consequently the YOLOv5 models can detect 80 classes. However, for the detection of traffic, only six classes are relevant.

## Target classes

Target classes are all road user classes from the initial COCO data set that are relevant for our sample videos:

- Person
- Bicycle
- Motorcycle
- Car
- Bus
- Truck

All vehicles or combinations of vehicles are labeled as "truck" if they have

- twin tires (except for regular service buses or coaches),
- a superstructure or a loading area or
- a trailer (also cars with trailer, the 2D box includes vehicle and trailer).

Here, as in the COCO dataset, both the "person" and the "bicycle" are labeled separately for bicyclists.

## Object dimensions

The 2D box boundaries are defined by the outermost parts of the objects visible in that frame of the video.

Even if only a part of an object is visible and the class of the object is recognizable for the annotator, it should be labeled.
