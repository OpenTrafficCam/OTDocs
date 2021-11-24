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

In the task of object detection a model is considered to be good if it is able to detect and classify an object correctly.
In this section we are going to have a look in the different object detection performance metrics.

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
Thus, we will look at their definitions as defined by Padilla et al. in their paper[^1]:

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

#### Average Precision (AP)

As Padilla et al. explained that an object detection model "can be considered good if, when the confidence threshold decreases, its precision remains high as its recall increases"[ [^1] ].
Taking this into account a model with a large area under a precision-recall curve indicates a high precision and a high recall.
Thus, the  **average precision** "is a metric based based on the area under a [precision-recall curve]" [ [^1] ].

#### Mean Average Precision (mAP)

We need to keep in mind that the average precision needs to be calculated for each class individually [ [^1] ].
Hence, the **mean average precision** "is a metric that is able to represent the exactness of the detections among all classes" [ [^1] ].

The mAP is calculated as follows:

$$
mAP = \frac{1}{C} \sum_{i=1}^{C} AP_i
$$

where C is the total number of classes and $AP_i$ is the average precision of class $i$ [ [^1] ].

#### TIDE Metrics

Bolya et al. created **[TIDE](https://dbolya.github.io/tide/)** a *General Toolbox for Identifying Object Detection Errors*[^2].
As Bolya et al. explain in their paper[^2] "mAP succinctly summarizes the performance of a model in one number".
Thus, the mAP performance metric does not give us any insight on what and how the different error types influence its score, that is the mAP score.
The aim of TIDE is exactly that, to give us this insight on how the different error types affect the mAP score and as Bolya et al. stated in [ [^2] ] giving us "a comprehensive analysis of each model's strengths and weaknesses".

[TIDE](https://dbolya.github.io/tide/) defines six main error types as follows:

!!! info
    The following descriptions of the error types are directly taken from the [TIDE source code](https://github.com/dbolya/tide/blob/master/tidecv/errors/main_errors.py)

1. **Classification Error**: Error caused when a prediction would have been marked positive if it had the correct class.

2. **Localization Error**: Error caused when a prediction would have been marked positive if it was localized better.

3. **Both Cls and Loc Error**: This detection didn't fall into any of the other error categories.

4. **Duplicate Detection Error**: Error caused when a prediction would have been marked positive if the GT wasn't already in use by another detection.

5. **Background Error**: Error caused when this detection should have been classified as background (IoU < 0.1).

6. **Missed Ground Truth Error**: Represents GT missed by the model. Doesn't include GT corrected elsewhere in the model.

### Object Tracking

!!! info "Coming soon"
    Unfortunately, there is no content here yet. But we are currently working on completing this website.

### Traffic Measures

!!! info "Coming soon"
    Unfortunately, there is no content here yet. But we are currently working on completing this website.

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

## References

[^1]: Padilla, R., Passos, W. L., Dias, T. L., Netto, S. L., & da Silva, E. A. (2021). A comparative analysis of object detection metrics with a companion open-source toolkit. Electronics, 10(3), 279. [https://doi.org/10.3390/electronics10030279](https://doi.org/10.3390/electronics10030279)

[^2]: Bolya, D., Foley, S., Hays, J., & Hoffman, J. (2020). Tide: A general toolbox for identifying object detection errors. In Computer Vision–ECCV 2020: 16th European Conference, Glasgow, UK, August 23–28, 2020, Proceedings, Part III 16 (pp. 558-573). Springer International Publishing. [https://dbolya.github.io/tide/paper.pdf](https://dbolya.github.io/tide/paper.pdf)