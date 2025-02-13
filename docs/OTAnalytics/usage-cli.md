# Usage CLI

## Synopsis

```text
python -m OTAnalytics [-h] [--cli] [--cli-mode {bulk,stream}]
                [--cli-chunk-size CLI_CHUNK_SIZE] [--show-svz]
                [--config CONFIG] [--ottrks OTTRKS [OTTRKS ...]]
                [--otflow OTFLOW] [--save-dir SAVE_DIR]
                [--save-name SAVE_NAME] [--save-suffix SAVE_SUFFIX]
                [--debug]
                [--event-formats EVENT_FORMATS [EVENT_FORMATS ...]]
                [--count-intervals COUNT_INTERVALS [COUNT_INTERVALS ...]]
                [--no-track-export] [--no-track-statistics-export]
                [--num-processes NUM_PROCESSES] [--logfile LOGFILE]
                [--logfile_overwrite]
                [--include-classes INCLUDE_CLASSES [INCLUDE_CLASSES ...]]
                [--exclude-classes EXCLUDE_CLASSES [EXCLUDE_CLASSES ...]]
```

## Description

If you have run ([OTVision track](../../OTVision/usage/track)) to extract movements of road users, you are ready to analyze the movements in each file.

## Parameters

### General Options

#### help

`-h`, `--help`

Show the help message and exit.

---

#### cli

`--cli`

Start OTAnalytics in CLI mode. If omitted, OTAnalytics will run in GUI mode.

---

#### cli-mode

`--cli-mode {bulk,stream}`

Specify the execution mode for the CLI. Possible values are:

- `bulk`: Process data in batches.
- `stream`: Process data in streams.

This parameter is optional. Defaults to `bulk`.

---

#### cli-chunk-size

`--cli-chunk-size <integer>`

Specify the chunk size for streaming OTAnalytics CLI.

This parameter is optional.

---

#### show-svz

`--show-svz`

Show SVZ-Tab in OTAnalytics GUI. If omitted the tab will be hidden.

---

### Configuration and Input Files

#### config

`--config <path/to/config file>`

Path to otconfig file.

---

#### ottrks

`--ottrks <paths to .ottrk files>`

Specify one or more paths to `.ottrk` files containing track data to be processed.

---

#### otflow

`--otflow <path/to/file>`

Path to an `.otflow` file containing section information needed for analysis.

---

### Output Options

#### save-dir

`--save-dir <path/to/directory>`

Specify the directory where output files will be saved.

---

#### save-name

`--save-name <filename>`

Specify the base name of the output file (e.g., event data). A proper suffix or file type will be appended automatically.

---

#### save-suffix

`--save-suffix <suffix>`

Append a custom suffix to the filenames of all output files. For example, if the `save-name` is `results` and the suffix is `_test`, the resulting file may be `results_test.csv`.

This is optional.

---

#### event-formats

`--event-formats <formats>`

Specify one or multiple output formats for the event list. Supported formats:

- `otevents` (default)
- `csv`
- `xlsx`

This parameter is optional and defaults to `otevents`.

---

#### count-intervals

`--count-intervals <intervals in minutes>`

Specify the time interval(s) in minutes for event counting.

Example: `--count-intervals 5 10 15` will export event counts for 5-minute, 10-minute, and 15-minute intervals.

---

#### no-track-export

`--no-track-export`

Disable the export of track data as `.csv`.

---

#### no-track-statistics-export

`--no-track-statistics-export`

Disable the export of track statistics as `.csv`.

---

### Processing Options

#### num-processes

`--num-processes <integer>`

Specify the number of processes to be used for multi-processing. The CLI will divide the workload among these many processes to improve performance.

---

#### include-classes

`--include-classes <list of classes>`

Whitelist filter to include tracks with given classes. Classes specified in `--include-classes` are always kept even if they appear in `--exclude-
                        classes`.

---

#### exclude-classes

`--exclude-classes <list of classes>`

Blacklist filter to exclude tracks with given classes.

---

### Debugging and Logging

#### debug

`--debug`

Set log level to `DEBUG` mode for detailed information about the process.

---

#### logfile

`--logfile <path/to/file>`

Specify the directory or file location where logs should be saved.

---

#### logfile_overwrite

`--logfile_overwrite`

Overwrite the log file if it already exists. If omitted, logs will be appended to the existing file.

---

## Notes

- Any parameters specified via the CLI will override those specified in the configuration file.
- Ensure all file paths are provided in the correct format and are accessible.
