# How to calibrate OTCamera

[OTCamera](https://github.com/OpenTrafficCam/OTCamera) gives you the opportunity to receive distinctive camera parameters.
These include intrinsics, extrinsic and distortion coefficients.
By using our web browser based program and multiple images of a calibration pattern,
like a chessboard you can calculate a camera matrix and distortion coefficients.
You will be able to evaluate your calibration with a reprojection error which is used to quantify how closely you can recreate true projection.
In other words: You can undistort pictures, trajectories or any other pixel coordinates.

First step

* First you need to download a chessboard pattern (you can search for calibration board).
* The pattern size and dimension will play no big role for now, so feel free to use any chessboard.
* Attach your printout to a solid object. The image should be as flat as possible.
* For best results its unavoidable to let your calibration pattern be manufactured by professionals.

Procedure

* Start the calibration application on your raspberrypi.
* Create a new calibration with a self-chosen CamID.
* Enter the number of chessboardcolumns, -rows and the squaresize in mm.
* Choose a number of wanted successful calibration pictures and resolution.
* Start the calibrationprocess.
* By clicking on "receive coefficients" your camera parameters will be stored as json-file on your raspberrypi.
* Evaluate the reprojection error displayed in the userinterface.

![OTcamera_calibration](OTcamera_calibration.gif)
