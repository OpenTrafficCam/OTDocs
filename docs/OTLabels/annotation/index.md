# Annotation

If you want to label your own dataset to retrain models, keep in mind that the format of your new labels needs to be the same as the format of the original dataset. On this page we define our intended organizational and technical annotation workflow using CVAT.

Since YOLOv5 is based on the the MS COCO dataset of 2D bounding boxes, you need to apply your own labels in the frames from your sample videos in the same format. We therefore recommend the following steps:

1. Install and setup an instance of CVAT either on your local computer or on a server (recommended when working in a team).
2. Import the videos in CVAT and select the frames you want to use for labelling.
3. Download the dataset from CVAT using the YOLO v1.1 format.
4. Pre-annotate your frames with the standard YOLOv5x model. The results do probably not meet the desired quality. However, the pre-annotated labels will save you some time since it not nessecary to draw all labels from scratch.
5. Upload the pre-annotated frames to CVAT and revise the detected labels.
6. Download the final labels from CVAT and convert them to COCO format (using our cvat_to_coco.py script).

## Links

[CVAT] (<https://github.com/openvinotoolkit/cvat>)
[CVAT installation guide] (<https://github.com/openvinotoolkit/cvat/blob/develop/cvat/apps/documentation/installation.md>)
[CVAT user's guide](https://github.com/openvinotoolkit/cvat/blob/develop/cvat/apps/documentation/user_guide.md).
