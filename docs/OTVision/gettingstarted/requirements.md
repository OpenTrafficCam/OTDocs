# Requirements

## Hardware prerequisites

OTVision runs on modern 64 bit desktops and laptops (e.g. i5 processor and 8 GB RAM). Apple Silicon processors can also be used to run OTVision. However, they are not supported natively and therefore might not perfrom at their maximum.

If you want to detect road users in videos with OTVision on a regular basis, we strongly recommend purchasing a powerful desktop computer (>= i7, >= 64 GB RAM) with a NVidia graphics card (>= GeForce 30XX Series). Make sure that the drivers of the graphics card are installed to use CUDA with OTVision to get the best performance.

## Software prerequisites

OTVision is completely based on Open Source Python packages. Thus, it runs on Windows, MacOS and Linux systems after setting up the environment correctly. Consequently, a recent version of Python (currently supported: Python 3.9) needs to be installed on the system. An instruction how to do that on a Windows system can be found [here](OTVision/gettingstarted/installation/#install-python-39)

To achieve the maximum performance on systems with a NVidia graphics card, the CUDA drivers have to be installed correctly. A detailed instruction how to do that on a Windows system can be found [here](/OTVision/gettingstarted/installation/#install-nvidia-cuda-110).
