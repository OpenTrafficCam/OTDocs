# Requirements

OTAnalytics is designed to run on most modern operating systems (Windows, macOS, Linux).
Before installing OTAnalytics, please make sure your system meets the following prerequisites.

## System requirements

- CPU: Modern 64-bit processor
- RAM: 8 GB or more recommended (more RAM allows more tracks to be loaded simultaneously)
- Storage: At least 2 GB free disk space for installation and temporary files
- Display: At least Full-HD recommended for comfortable UI usage

## Operating system

- Windows 10/11 (64-bit)
- macOS (Apple Silicon and Intel are supported)
- Linux (recent distributions; tested with Ubuntu/Debian-based systems)

## Software

- Python 3.12.x
  - Download from [python.org/downloads](https://www.python.org/downloads/)
  - Make sure to include pip and Tk/GUI components during installation
  - For step-by-step installation instructions, see the [Installation](installation.md) page

## Input data

OTAnalytics analyzes trajectories (tracks) exported by OTVision:

- Track files: .ottrk files created by OTVision Track
- Optional: Video files corresponding to the track files (for visual validation)

If you plan to use OTAnalytics without videos, you can still configure and run analyses based on .ottrk files.
