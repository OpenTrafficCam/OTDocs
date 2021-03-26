# In a Nutshell

[**OTVision**](https://github.com/OpenTrafficCam/OTVision), is a collection of algorithms to generate trajectories of road users in traffic videos. Most of the algorithms have been developed in previous open source projects. We modify and link them to a working pipeline.

Key features:

* Automated video analysis
* Detection using neural networks
* Can be used without programming knowledge
* Result: Trajectories in image and world coordinates
* Necessary: Windows computer with powerful graphics card (approx. 2.500 €)

Pipeline of algorithms:

* Detection (joint localization and classification) of road users in single frames ([YOLOv3 by Redmon & Farhadi](https://pjreddie.com/media/files/papers/YOLOv3.pdf))
* Tracking of detected road users between single frames ([IOU-Tracker by Bochinski et al.](https://github.com/bochinski/iou-tracker))
* Correction of trajectories for lens distortion ([OpenCV-Library](https://opencv.org/))
* Conversion of trajectories to world coordinates ([OpenCV-Library](https://opencv.org/))
