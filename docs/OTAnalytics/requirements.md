# Requirements

OTAnalytics is designed to run on most modern operating systems (Windows, macOS, Linux).
Before installing OTAnalytics, please make sure your system meets the following prerequisites.

## System requirements

- CPU: Modern 64-bit processor (e.g., Intel i5/AMD Zen or newer)
- RAM: 8 GB or more recommended (more RAM allows more tracks to be loaded simultaneously)
- Storage: At least 2 GB free disk space for installation and temporary files
- Display: Full-HD (1920×1080) recommended for comfortable UI usage

## Operating system

- Windows 10/11 (64-bit)
- macOS 12+ (Apple Silicon and Intel are supported)
- Linux (recent distributions; tested with Ubuntu/Debian-based systems)

## Software

- Python 3.12.x
  - Download from https://www.python.org/downloads/
  - Make sure to include pip and Tk/GUI components during installation

## Input data

OTAnalytics analyzes trajectories (tracks) exported by OTVision:

- Track files: .ottrk files created by OTVision Track
- Optional: Video files corresponding to the track files (for visual validation)

If you plan to use OTAnalytics without videos, you can still configure and run analyses based on .ottrk files.

## Optional GPU

OTAnalytics itself does not require a GPU. A GPU can speed up OTVision processing, which generates the inputs for OTAnalytics, but is not necessary for running OTAnalytics.

## Network and permissions

- Optional network access for checking updates or collaborating via shared storage
- File system access to read .ottrk/.mp4 and write results (CSV/Excel)

If you have questions or issues, feel free to open an issue on GitHub:
https://github.com/OpenTrafficCam/OTAnalytics/issues/new
