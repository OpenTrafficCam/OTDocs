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

## Metrics

### Object Detection

#### Intersection Over Union (IOU)

#### True Positives, True Negatives, False Positives, False Negatives

#### Precision

#### Recall

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
