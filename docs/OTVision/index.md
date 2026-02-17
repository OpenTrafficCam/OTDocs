---
hide: toc
---

# Features

> The **heart** of OpenTrafficCam.

[OTVision](https://github.com/OpenTrafficCam/OTVision) is a collection of algorithms
to generate trajectories of road users from traffic videos.
Most of the algorithms have been developed in previous open source projects.
We modify them and link them with our own developments into a working pipeline.

The current pipeline consists of three core functionalities of OTVision:
_[convert](usage/convert.md)_, _[detect](usage/detect.md)_ and _[track](usage/track.md)_.

```mermaid
graph LR
    subgraph OTVision["OTVision:"]
        direction LR
        conv(<b>convert</b>
        ...raw video
        files to mp4)
        det(<b>detect</b>
        ...road users
        in single
        frames)
        tr(<b>track</b>
        ...detected road
        users over
        multiple frames)
        conv --> det --> tr
    end
    tr .-> traj[/.ottrk
    Trajectories/]
    vf[/.mp4
    Video Files/] .-> det
    rvf[/.h264
    Video Files/] .-> conv
```

## Key features

- Can be used without programming knowledge
- [Conversion](usage/convert.md) of .h264 video files to other formats
  (using [ffmpeg](https://ffmpeg.org/))
- [Detection](usage/detect.md) (joint localization and classification) of road users using
  state-of-the-art AI object detection models in single video frames
  (currently using [YOLOv8 by Ultralytics](https://github.com/ultralytics/ultralytics))
- [Tracking](usage/track.md) of detected road users over multiple frames
  (currently using the
  [IOU-Tracker by Bochinski et al.](https://github.com/bochinski/iou-tracker))
  and over multiple videos.
- **Result:** Trajectories in pixel coordinates
