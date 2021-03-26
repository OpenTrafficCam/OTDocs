# In a Nutshell

> Better detection performance.

[**OTLabels**](https://github.com/OpenTrafficCam/OTLabels) is a workflow for the retraining of AI models to detect road users in videos based on existing open source software packages ([CVAT](https://github.com/openvinotoolkit/cvat), [YOLO v5](https://github.com/ultralytics/yolov5)).

Key features:

* Annotation of vehicles and persons using existing open source software ([CVAT](https://github.com/openvinotoolkit/cvat))
* Retrain existing neural network models with [YOLO v5](https://github.com/ultralytics/yolov5) for individual optimization of the detection ability
* Long-term: Real time detection
* Runs on any Windows laptop. However, a decent GPU with CUDA support is strongly recommended.

Most of the code describing the workflow will be developed by the OpenTrafficCam contributors (based on python libraries like [NumPy](https://numpy.org/), [pandas](https://pandas.pydata.org/), [tkinter](https://docs.python.org/3/library/tkinter.html) and [OpenCV](https://opencv.org/)).
