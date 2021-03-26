# Data Structures

## OTCamera

| Property | Description |
| --- | --- |
| CamID | MAC address, unique |
| CamModel | - |
| CamName | - |

## Calib

| Property | Description |
| --- | --- |
| CalibID | Unique |
| CamID | MAC address from object "OTCamera" |
| CalibDateTime | Date & Time when calibration was performed |
| CalibK1 | Dist. coeff. K1 |
| CalibK2 | Dist. coeff. K2 |
| CalibK3 | Dist. coeff. K3 |
| CalibP1 | Dist. coeff. P1 |
| CalibP2 | Dist. coeff. P2 |

## Video

| Property | Description |
| --- | --- |
| VideoID | Unique |
| CamID | MAC address from object "OTCamera" |
| CalibID | From object "Calib" |
| VideoDateTime | Date & Time when video starts |
| VideoFPS | - |

## OTVision

| Property | Description |
| --- | --- |
| VisionID | Unique |
| VisionDetector | e.g. YOLOv3, OcclusionNet, OpenPose |
| VisionTracker | e.g. IOU+mod |
| VisionDistStatus | Has undistortion been performed? |
| VisionConvStatus | Has conversion to world coordinates been performed? |

## Bbox

| Property | Description |
| --- | --- |
| BboxID | Unique |
| BboxXmin | bbox left limit |
| BboxXmax | bbox right limit |
| BboxYmin | bbox upper limit|
| BboxYmax | bbox lower limit |
| BboxXctr | x of bbox center |
| BboxYctr | y of bbox center |
| BboxXheight | Diff of BboxXmax and BboxXmin |
| BboxYwidth | Diff of BboxXmax and BboxXmin |
| BboxTranspMode | Mode of transportation |
| BboxConfid | Confidence of classification |

## WireframeCar

t.b.a. (alternative detector to YOLO)

## WireframeHuman

t.b.a. (alternative detector to YOLO)

## Traj

| Property | Description |
| --- | --- |
| TrajID | Unique |
| TrajTranspMode | Mode of transportation |
| TrajConf | Mean confidence of whole trajectory [%]  |

## TrajPt

| Property | Description |
| --- | --- |
| TrajPtID | Unique |
| TrajID | From object "Traj" |
| TrajPtTime | Time stamp of a single trajectory point [sec] |
| TrajPtXpx | X coordinate of a single trajectory point [Px] |
| TrajPtYpx | Y coordinate of a single trajectory point [Px] |
| TrajPtXworld | X coordinate of a single trajectory point [UTM] |
| TrajPtYworld | Y coordinate of a single trajectory point [UTM] |
| TrajPtSpeed | Speed of a single trajectory point [km/h] |
| TrajPtAcc | Acceleration of a single trajectory point [m/s^2] |
| TrajPtConf | Confidence of a single trajectory point [%] |

## RefPt

| Property | Description |
| --- | --- |
| RefPtID | Unique |
| RefPtXpx | X Coord. [Px] |
| RefPtYpx | Y Coord. [Px] |
| RefPtXworld | X Coord. [UTM] |
| RefPtYworld | Y Coord. [UTM] |

## OTAnalytics

_t.b.a._

## Gate

| Property | Description |
| --- | --- |
| GateID | Unique |
| GateX1px | X Coord. Pt. 1 [Px] |
| GateY1px | Y Coord. Pt. 1 [Px] |
| GateX2px | X Coord. Pt. 2 [Px] |
| GateY2px | Y Coord. Pt. 2 [Px] |
| GateX1world | X Coord. Pt. 1 [UTM] |
| GateY1world | Y Coord. Pt. 1 [UTM] |
| GateX2world | X Coord. Pt. 2 [UTM] |
| GateY2world | Y Coord. Pt. 2 [UTM] |

## Count

| Property | Description |
| --- | --- |
| CountID | Unique |
| GateID | From object "Gate" |
| TrajID | From object "Traj" |
| CountTranspMode | Mode of transportation (from object "Traj") |
| CountTime | Video time [sec] |
| CountDir | Direction [1,2] |
