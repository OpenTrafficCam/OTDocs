# calibrate OTCamera

[**OTCamera**] gives you the opportunity to recieve distintive camera parameters. These include intrinsics, extrinsics and distortion coefficients. By using our web browser based programm and multiple images of a calibration pattern, like a chessboard you can calculate a camera matrix and distortion coefficients. You will be able to evaluate your calibration with a reprojektion error which is used to quantify how closely you can recreate true projection. In other words: You can undistort pictures, trajectories or any other pixel coordinates.

First step

* first you need to download a chessboard pattern (you can search for calibration board).
* The pattern size and dimension will play no big role for now, so feel free to use any chessboard.
* Attach your printout to a solid object. The image should be as flat as possible.
* For best results its unavoidable to let your calibration pattern be manufactured by professionals.


Procedure

* Start the calibration application on your raspberrypi.
* Create a new calibration with a self-chosen CamID.
* Enter the number of chessboardcolumns, -rows and the squaresize in mm.
* Choose a number of wanted successful calibration pictures and resolution.
* Start the calibrationprocess.
* By clicking on "recieve coefficients" your camera parameters will be safed on your raspberrypi.
* Evaluate the reprojection error displayed in the userinterface.

![OTcamera_calibration](OTcamera_calibration.gif)