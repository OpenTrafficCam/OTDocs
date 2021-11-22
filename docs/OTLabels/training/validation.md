# Validation

Validation gives insight on how well a model or software performs.
In the case **OpenTrafficCam**, we want to evaluate and compare different object detection models on how well they perform in object detection and object tracking.
Furthermore, we want to analyse the results of **[OTAnalytics](<https://github.com/OpenTrafficCam/OTAnalytics>)** on a set of traffic performance metrics.

For this purpose we are currently developing **[OTValidate](<https://github.com/OpenTrafficCam/OTValidate>)** which allows the user to analyse and compare the models' performances on object detection and tracking by calculating metrics corresponding to the specific task at hand.
As mentioned above **OTValidate** will also provide tools to analyse the results of **OTAnalytics** regarding traffic performance.

## Overview

![OTValidate Overview Image](assets/otvalidate_overview.svg)
For the **object detection task** OTValidate needs two input files namely an `.otdet` file and the ground truth label data for the object detection task.
Alternatively, a custom or an existing model can be given over as an input instead of an `.otdet` file.

## Performance Metrics

In this section we briefly go over the different metrics to evaluate our models on how they fare in the different tasks.

### Object Detection

In the task of object detection it is important 

#### Intersection Over Union (IOU)

We can tell if a predicted bounding box matches a ground truth bounding box by calculating and looking at the IOU of the two bounding boxes.
As Padilla et al. explained in the paper[^1], "a perfect match is considered when the area and location of the predicted and ground-truth boxes are the same".
Therefore, the IOU is calculated by determining the area of the intersection of the two bounding boxes and dividing it by the area of the union of the two bounding boxes as shown in:

![IOU Image](assets/iou.svg)
<p align = "center">
Illustration adapted from the paper <a href="https://doi.org/10.3390/electronics10030279">"Analysis of Object Detection Metrics with a Companion Open-Source Toolkit"</a>
</p>

Thus, two bounding boxes are considered a perfect match if the **IOU = 1**.
Meaning the predicted and ground truth bounding boxes share the same location and the same size.

On the other hand, the **IOU = 0** when there is no intersection between the predicted and the ground truth bounding box.

Usually a an IOU threshold is defined in order to decide whether a predicted and ground truth bounding box are considered a match.

#### True Positives, False Positives, False Negatives

This section will explain what true positives, false positives, false negatives and true negatives are in the task of object detection.
Thus, we will look at their definitions explained by Padilla et al. in their paper[^1]:

##### True Positive

A correct detection of a ground-truth bounding box.

##### False Positive

An incorrect detection of a non-existing object or a misplaced detection of an existing object.

##### False Negatives

An undetected ground-truth bounding box.

#### Precision

Padilla et al. explain in [ [^1] ] precision as "the ability of a model to identify only relevant objects. It is the percentage of correct positive predictions."

Precision is calculated as:

$$
Precision = \frac{TP}{TP + FP}
$$

#### Recall

Padilla et al. explain in [ [^1] ] recall as "the ability of a model to find all relevant cases (all ground-truth bounding boxes). It is the percentage of correct positive predictions among all given ground truths."

Recall is calculated as:

$$
Recall = \frac{TP}{TP + FN}
$$



#### Mean Average Precision

#### Tide Metrics

### Object Tracking

### Traffic Measures

## Installation

=== "Linux/ macOS Intel"

    Install [OTValidate](https://github.com/OpenTrafficCam/OTValidate) by cloning the repository  with git:

    ```bash
    git clone https://github.com/OpenTrafficCam/OTValidate.git
    cd OTValidate
    pip install -r requirements.txt
    pip install .
    ```

    Or install by using the `Makefile`:

    ```bash
    git clone https://github.com/OpenTrafficCam/OTValidate.git
    cd OTValidate
    make install
    ```

=== "Windows"
    TODO: Installation instructions for Windows

=== "Apple M1"

    The installation for machines running on Apple's M1 chip is not as straightforward.
    There are two ways to install `OTValidate` on an M1 Mac. 
    As a prerequisite the package manager [Homebrew](https://brew.sh) is required. 

    1. By executing these commands in the following order:

        ```bash
        git clone https://github.com/OpenTrafficCam/OTValidate.git
        cd OTValidate
        brew install openblas
        OPENBLAS=$(brew --prefix openblas) CFLAGS="-falign-functions=8 ${CFLAGS}" pip install scipy==1.7.2
        pip install -r requirements.txt
        pip install .
        ```

    2. By using the `Makefile`
    
        ```bash
        git clone https://github.com/OpenTrafficCam/OTValidate.git
        cd OTValidate
        make install_m1
        ```


## Prerequisites

### Image Annotation Data

The folder containing the ground truth annotations of the images need to be in the **YOLOv4** format:

```project
annotation_data
│   obj.data
│   obj.names    
│   train.txt
│
└───obj_train_data
    │   frame_01.png
    │   frame_01.txt
    │   frame_02.png
    │   frame_02.txt
    │   ...
    │
```

## Usage

### Analyse Object Detection Performance

#### **1. Quickstart Guide**

```python
from OTValidate  import evaluate_detection_performance

# path to the directory containing the annotated dataset in otdet format
gt_data = "path/to/data1"

# model weights
model1 = "path/to/model_weights1.pt"
model2 = "path/to/model_weights2.pt"
model3 = "path/to/model_weights3.pt"

```

Use the `evaluate_detection_performance` function to calculate a set of object detection metrics of the respective models:

```python
evaluate_detection_performance(
    path_to_model_weights=[model1, model2, model3],
    yolo_path=yolo_path,
    otdet_gt_dir=gt_data, 
    is_gt_xyxy_format=False, # whether the ground truth's bounding box is in xyxy or xywh format
    normalized=True,
)
```

#### **2. Results**

The evaluation results of the models will be saved in the directories containing the annotation data.
An `out` directory containing all the results will be created there.


[^1]: Padilla, R.; Passos, W.L.; Dias, T.L.B.; Netto, S.L.; da Silva, E.A.B. A Comparative Analysis of Object Detection Metrics with a Companion Open-Source Toolkit. Electronics 2021, 10, 279. [https://doi.org/10.3390/electronics10030279](https://doi.org/10.3390/electronics10030279)