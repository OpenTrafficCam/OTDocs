# First Use

This page guides you through your first steps with OTAnalytics using the Graphical User Interface (GUI).
If you haven't installed OTAnalytics yet, start with the [Requirements](requirements.md) and [Installation](installation.md) pages.

## Run OTAnalytics

Run the start script as follows:

=== "Windows"

    ```cmd
    .\start_gui.cmd
    ```

=== "macOS / Linux"

    ```sh
    sh ./start_gui.sh
    ```

## Prepare your data

Make sure you have the [required input data](requirements.md#input-data) ready:
`.ottrk` files from OTVision and, optionally, corresponding video files for visual validation.

## Workflow overview

### 1. Set up the project

Enter a project name and start date, then load your track files.
See [Setup the project](usage/usage-ui.md#setup-the-project) for detailed instructions.

### 2. Define sections and flows

Draw sections on the video image and create flows to define traffic relationships.
See [Configure traffic analysis](usage/usage-ui.md#configure-traffic-analysis) for step-by-step guidance.

### 3. Validate with visualization

Use the [visualization layers](usage/usage-ui.md#visualization-layers) and [filters](usage/usage-ui.md#visualization-filters) to check your configuration before exporting.

### 4. Export results

Export traffic counts, event lists, or road user assignments.
See [Analysis exports](usage/usage-ui.md#analysis-exports) for all export options.

For detailed explanations of all features, continue with [Usage (GUI)](usage/usage-ui.md) and [Usage (CLI)](usage/usage-cli.md).
