# Getting Started

This section provides a guide on how to install and use OTValidate.

## Installation

=== "Windows"
TODO: Installation instructions for Windows

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

The folder containing the ground truth annotations of the images need to be in the **YOLO** format:

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

#### **Quickstart Guide**

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

#### **Results**

The evaluation results of the models will be saved in the directories containing the annotation data.
An `out` directory containing all the results will be created there.
