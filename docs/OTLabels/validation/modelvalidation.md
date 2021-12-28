# Model Validation

In this section we will compare the different YOLO models on how good they fare in the object detection task.
The YOLO models to be evaluated are YOLOv5s, YOLOv5m, YOLOv5l and YOLOv5x.
The models are evaluated on a custom dataset consisting of custom video recordings.
Thus, we want to investigate which of the four YOLO models might be best suited in the detection of traffic objects.

## Dataset

As mentioned above, the dataset consist of different video recordings capturing different traffic scenes.
Thus, the video recordings are turned into datasets by taking every 100th frame.

Here is how the scenes are looking like:

| Scenes                                |                                       |                                       |                                                   |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------------------- |
| ![Scene 1](assets/scenes/scene_1.jpg) | ![Scene 3](assets/scenes/scene_3.jpg) | ![Scene 2](assets/scenes/scene_2.jpg) | ![Scene 2 Night](assets/scenes/scene_2_night.jpg) |
| ![Scene 4](assets/scenes/scene_4.jpg) | ![Scene 6](assets/scenes/scene_6.jpg) | ![Scene 5](assets/scenes/scene_5.jpg) | ![Scene 5 Night](assets/scenes/scene_5_night.jpg) |

As seen above, there are two instances where scenes were also recorded at night.
This makes it interesting to see how the YOLO models perform in detecting traffic objects in low light conditions.

The class labels to be considered for our evaluation of the YOLO models are:

- person
- bicycle
- car
- motorcycle
- bus
- truck

## Evaluation Procedure

The YOLO models are evaluated with the help of [OTValidate](overview.md).
As a prerequisite, what OTValidate needs in order to start the evaluation are the YOLO models and the labeled ground truth data.
In our case the ground truth labeled data is our custom dataset, which needs to be in the [CVAT YOLO format](https://openvinotoolkit.github.io/cvat/docs/manual/advanced/downloading-annotations/
).
As for the YOLO model, a custom trained or an existing model can be loaded into OTValidate.

OTValidate then uses each model to predict the ground truth images.
Afterwards, the prediction results and ground truth data are used to calculate the different object detection [metrics](metrics.md) for model comparison.
In our case, we will use the mAP and the [TIDE metrics](https://github.com/dbolya/tide
) are used.

!!! info

    OTValidate takes a list of class labels as a parameter.
    All predictions and ground truth data are then filtered according to that list of class labels.
    Meaning, all predictions or ground truth data, whose predicted or labeled class are not contained in the list, are discarded and therefore not regarded in the evaluation process.
    This is especially useful if the ground truth data contains class labels that the model can't predict. 

## Evaluation

In this section we will discuss the evaluation results of each model and put them under comparison.
Specifically, we will evaluate the models on each dataset depicted by the scenes as shown above in the table and on all the ground truth data.
The models confidence and IOU threshold are set to 0.25 and 0.5 respectively.
Meaning, all detections that have an IOU lower than 0.5 are not regarded as possible detections and all detections with a confidence lower than 0.25 are discarded.

### Evaluation on all data

This diagram depicts each models mAP at different IOU thresholds:

![mAP Diagram All](assets/plots/mAP_diagram_all.png)

We can clearly see that the YOLOv5s model's mAP is the lowest compared to the other models.
Meaning, by only looking at the mAP metric the YOLOv5s, YOLOv5m, and the YOLOv5x models are to be considered.

Nevertheless, let us also have a look at the TIDE metrics to get an insight on the types of errors made by the models:

| TIDE Metrics                                                  |                                                                        |
| ------------------------------------------------------------- | ---------------------------------------------------------------------- |
| ![All TIDE](assets/plots/tide_errors_diagram_all.png)         | ![All TIDE Stacked](assets/plots/tide_stacked_diagram_all.png)         |

What immediately stands out are the **Missed Ground Truth Error**(Miss) and the **Classification Error**.
Meaning, the models were not able to detect many ground truth bounding boxes or be able to classify them correctly.
Thus, the models were able to detect the majority of the bounding boxes, but had problems predicting the correct classes.

The YOLOv5s model had the highest classification error rate out of the four models.
Although, the missed ground truth error rate is also the highest, it does not differ much from the other three models.

It becomes apparent that the bigger models perform better at detecting bounding boxes than the smaller ones.
But there is also a point where the models' performance, namely the YOLOv5m, YOLOv5l and YOLOv5x, don't differ much at all.
Implying that there is not much of a trade-off in choosing the YOLOv5m or YOLOv5l over the YOLOv5x.

Still, let us try to find out why the  **Missed Ground Truth Error** appears to be a problem for all four models by evaluating them on the data of each scene.

### Evaluation on each dataset of a scene

#### Scene 1

| Scene 1                                                      |                                                                        |
|--------------------------------------------------------------|------------------------------------------------------------------------|
|![Scene 1](assets/scenes/scene_1.jpg)                         | ![Scene 1 mAP](assets/plots/mAP_diagram_scene_1.png)                   |
|![Scene 1 TIDE](assets/plots/tide_errors_diagram_scene_1.png) | ![Scene 1 TIDE Stacked](assets/plots/tide_stacked_diagram_scene_1.png) |

**Scene 1** captures a three way junction.
Compared to the combined dataset, the models' mAP value doesn't differ that much.
The missed ground truth error of all four models is above 20%.
Our assumption as to why the missed ground truth error is so high might be due to moving objects appearing in the distance.
The models might not be able to detect these objects as they appear to be very small in the picture, as marked in red bounding boxes in the following image:

![Scene 1 Small Objects](assets/scenes/scene_1_small_objects.jpg)

It is also possible that the timestamp covers up parts of objects making the models not be able to detect them.

#### Scene 2

Scene 2 captures a four-way junction.
There are two datasets capturing Scene 2 at daylight and nighttime respectively.

| Scene 2                                                                | At Night                                                                           |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| ![Scene 2](assets/scenes/scene_2.jpg)                                  | ![Scene 2 Night](assets/scenes/scene_2_night.jpg)                                  |
| ![Scene 2 mAP](assets/plots/mAP_diagram_scene_1.png)                   | ![Scene 2 mAP Night](assets/plots/mAP_diagram_scene_2_night.png)                   |
| ![Scene 2 TIDE](assets/plots/tide_errors_diagram_scene_1.png)          | ![Scene 2 TIDE Night](assets/plots/tide_errors_diagram_scene_2_night.png)          |
| ![Scene 2 TIDE Stacked](assets/plots/tide_stacked_diagram_scene_1.png) | ![Scene 2 TIDE Stacked Night](assets/plots/tide_stacked_diagram_scene_2_night.png) |

Comparing these two datasets, it is not surprising that the models mAP evaluated on the dataset taken at daylight fares much better to the one evaluated at nighttime.
The low light conditions make it really hard for the models to detect any of the objects.
The biggest drop in performance in terms of the mAP metric is seen from the YOLOv5s model.
But then, why is the **Missed Ground Truth Error** (Miss) much lower and the **Classification Error** that much higher
of the nighttime dataset of Scene 2?

<!-- TODO: Try to find out the total numbers of misses per class, the absolute numbers bounding boxes for each class in the ground truth data. -->

#### Scene 3

| Scene 3                                                       |                                                                        |
| ------------------------------------------------------------- | ---------------------------------------------------------------------- |
| ![Scene 3](assets/scenes/scene_3.jpg)                         | ![Scene 3 mAP](assets/plots/mAP_diagram_scene_3.png)                   |
| ![Scene 3 TIDE](assets/plots/tide_errors_diagram_scene_3.png) | ![Scene 3 TIDE Stacked](assets/plots/tide_stacked_diagram_scene_3.png) |

#### Scene 4

| Scene 4                                                       |                                                                        |
| ------------------------------------------------------------- | ---------------------------------------------------------------------- |
| ![Scene 4](assets/scenes/scene_4.jpg)                         | ![Scene 4 mAP](assets/plots/mAP_diagram_scene_4.png)                   |
| ![Scene 4 TIDE](assets/plots/tide_errors_diagram_scene_4.png) | ![Scene 4 TIDE Stacked](assets/plots/tide_stacked_diagram_scene_4.png) |

#### Scene 5

| Scene 5                                                                | At Night                                                                           |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| ![Scene 5](assets/scenes/scene_5.jpg)                                  | ![Scene 5 Night](assets/scenes/scene_5_night.jpg)                                  |
| ![Scene 5 mAP](assets/plots/mAP_diagram_scene_5.png)                   | ![Scene 5 mAP Night](assets/plots/mAP_diagram_scene_5_night.png)                   |
| ![Scene 5 TIDE](assets/plots/tide_errors_diagram_scene_5.png)          | ![Scene 5 TIDE Night](assets/plots/tide_errors_diagram_scene_5_night.png)          |
| ![Scene 5 TIDE Stacked](assets/plots/tide_stacked_diagram_scene_5.png) | ![Scene 5 TIDE Stacked Night](assets/plots/tide_stacked_diagram_scene_5_night.png) |

#### Scene 6

| Scene 6                                                       |                                                                        |
| ------------------------------------------------------------- | ---------------------------------------------------------------------- |
| ![Scene 6](assets/scenes/scene_6.jpg)                         | ![Scene 6 mAP](assets/plots/mAP_diagram_scene_6.png)                   |
| ![Scene 6 TIDE](assets/plots/tide_errors_diagram_scene_6.png) | ![Scene 6 TIDE Stacked](assets/plots/tide_stacked_diagram_scene_6.png) |
