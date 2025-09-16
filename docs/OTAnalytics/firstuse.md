# First Use

This page guides you through your first steps with OTAnalytics using the Graphical User Interface (GUI).
If you haven’t installed OTAnalytics yet, start with the Installation page.

## Start OTAnalytics

Open a terminal/command prompt, navigate to the unzipped OTAnalytics folder and launch the GUI:

=== "Windows"
    ```cmd
    .\start_gui.cmd
    ```

=== "macOS / Linux"
    ```sh
    sh ./start_gui.sh
    ```

The application window should open.

## Prepare your data

OTAnalytics analyzes trajectories (tracks) computed by OTVision.
Make sure you have:

- One or more .ottrk files exported by OTVision Track
- Optional: Corresponding video files for visual validation

If you do not have .ottrk files yet, see OTVision’s documentation on how to run detection and tracking.

## Create a new project

1. Open OTAnalytics and go to the Project section in the top configuration bar.
2. Enter a project name and set the start date/time of the first video.
3. Save your project configuration regularly (creates a .otconfig file).

## Load tracks and videos

1. Go to the Tracks/Video section.
2. Click Add tracks... and select one or multiple .ottrk files.
3. If videos with matching names are found, they will be loaded automatically. Otherwise, you can add videos separately.

Tip: Sort videos so their alphabetical order matches the chronological order of recording.

## Define sections and flows

1. Switch to Sections/Flows.
2. Create sections that correspond to virtual detectors in the scene (draw them in the canvas).
3. Create flows by selecting a start section and an end section.

Each time a track crosses a section, an event is generated. Flows assign tracks based on these events.

## Run the analysis and export

1. Switch to Analysis.
2. Choose what to export (counts, flow matrices, event lists, track statistics, etc.).
3. Select a target folder and export to CSV/Excel.

That’s it! You’ve completed your first analysis with OTAnalytics. For detailed explanations of all features, continue with Usage (GUI) and Usage (CLI).
