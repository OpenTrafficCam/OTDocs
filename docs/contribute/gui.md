# GUI

For now we decided on using [PysimpleGUI](https://github.com/PySimpleGUI/PySimpleGUI) to build the OpenTrafficCam user interface, as it is lightweight and easy to start with. Whenever possible, we try to separate the gui code from all other code. All the gui modules have a place in the "gui" subpackage of the respective OT repository:

- [OTCamera/OTCamera/gui](https://github.com/OpenTrafficCam/OTCamera/tree/master/OTCamera/gui)
- [OTVision/OTVision/gui](https://github.com/OpenTrafficCam/OTVision/tree/master/OTVision/gui)
- [OTAnalytics/OTAnalytics/gui](https://github.com/OpenTrafficCam/OTAnalytics/tree/master/OTAnalytics/gui)

For the future we can also imagine using a web framework for user interaction. This would also help to enable remote access to local GPU machines or high performance computing centers.
