# Retraining a Model

Although the pretrained YOLOv5 models (especially the bigger ones like YOLOv5l or YOLOv5xl) return acceptable detection results, we experienced some shortcomings for certain object classes which are not well represented and/or distributed in the COCO dataset used for training the YOLOv5 models.

1. Especially county specific differences were identified, since the COCO dataset contains mainly pictures taken in North-American areas (US trucks vs. European trucks).
2. Also, less represented object classes (e.g., bicycles) might cause worse detection rate or even false detections and hence, to an uneven detection accuracy between the object classes.
3. This might lead to biases in the final counts (e.g., every car is detected, but only every second motorcycle).

Further, one might condense the 80 classes of the pretrained YOLOv5 models to the relevant six classes (pedestrian, bicycle, car, bus, truck, motorcycle) for detecting moving traffic to reduce noise from non-relevant classes.

## First step: setting up the config files

For retraining, there are two relevant config files that needs to be set up.

### Data structure and labels

YOLOv5 needs a config file in *yaml* format that contains information about file locations and the labels.
This config file is usually stored in the *data* folder in the *OTLabels* directory.

#### *data_structure_labels*.yaml

```yaml
# COCO 2017 dataset http://cocodataset.org
# Train command: python train.py --data coco.yaml
# Default dataset location is next to /yolov5:
#   /parent_folder
#     /coco
#     /yolov5

# download command/URL (optional)
# download: bash data/scripts/get_coco.sh

# train and val data as 
# 1) directory: path/images/, 
# 2) file: path/images.txt, or 
# 3) list: [path1/images/, path2/images/]

train: ../OTLabels/data/path_to_structure_file_training.txt
val: ../OTLabels/data/coco/path_to_structure_file_validation.txt
test: ../OTLabels/data/coco/path_to_structure_file_test.txt

# number of classes
nc: 6

# class names
names: ["person", "bicycle", "car", "motorcycle", "bus", "truck"]
```

### Model structure

Further, the configuration file containing the model structure (also in *yaml* format) needs to be set up or adapted.
These configuration files are usually stored in the *models* folder within the *yolov5* directory.
Natively, YOLOv5 comes with one configuration file for each model (e.g., *yolov5s.yaml*).
We strongly recommend to keep the model structure itself as it is and only adapt the number of classes, since the retraining process is based on the trained standard weights, which rely on the original structure.

#### *model_structure*.yaml

```yaml
# parameters
nc: 6  # number of classes
...
```

## Second step: connecting to wandb

If you want to have your training process logged and visualized, YOLOv5 comes with the option to connect to weights and biases (wandb).
For further instructions, please visit [the wandb issue on GitHub](https://github.com/ultralytics/yolov5/issues/1289).
Otherwise you can chose the option not to use wandb when asked.

## Third step: retraining the model

Now, you are ready to start with the retraining of your models.
To start the process, simply execute the *train.py* with the desired options.

`python yolov5/train.py --img **img_size** --batch **batch_size** --epochs **n_epochs** --data path_to/**data_structure_labels**.yaml --weights yolov5/weights/**yolov5_weights** --cfg path_to/**model_structure**.yaml`

For further information about the whole retraining process with YOLOv5, please see [the original documentation on GitHub](https://github.com/ultralytics/yolov5/wiki/Train-Custom-Data).
