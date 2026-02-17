---
hide: toc
---

# Features

> The **backbone** of OpenTrafficCam.

[OTLabels](https://github.com/OpenTrafficCam/OTLabels) is a workflow for retraining AI models to detect road users in videos based on custom video frames
and existing open source software packages ([CVAT](https://github.com/openvinotoolkit/cvat), [YOLO v8](https://github.com/ultralytics/ultralytics)).

## Key features

- Annotation of custom video frames using existing open source software ([CVAT](https://github.com/openvinotoolkit/cvat))
- Retrain existing neural network models with [YOLO v8](https://github.com/ultralytics/ultralytics) for individual optimization of the detection ability
- Runs on any Windows laptop. However, a decent GPU with CUDA support is strongly recommended.

## Content of documentation

<!-- TODO Create content, and add links to content pages, links to the software then on the content pages -->

- [Training](training/cvat.md)
- [Validation](validation/overview.md)
- [Models](models/coco6.md)

Most of the code describing the workflow will be developed by the OpenTrafficCam contributors
(based on python libraries like [NumPy](https://numpy.org/), [pandas](https://pandas.pydata.org/), [tkinter](https://docs.python.org/3/library/tkinter.html) and [OpenCV](https://opencv.org/)).
