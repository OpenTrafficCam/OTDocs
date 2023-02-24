# Configuration File

> **configure** it for your own needs

If you´re getting tired of providing all those parameters to the CLI, you can also
specify them in a configuration `yaml` file and pass it´s path to the CLI instead.

By default, **OTVision** refers to the `user_config.otvision.yaml` in the root
directory.

You can either

- modify this file (then you don´t have to specify it´s path in the CLI) or
- build your own file and save it somewhere else (then you have to specify it´s path
    in the CLI).

You can specify parameters for the sub-tasks that are provided by OTVision
(`convert`, `detect`, `track`) in separate configuration files or in a single file.
The scripts for the respective sub-tasks only read the parameters they need.

!!! warning
    Any other parameters passed to the CLI will overwrite respective parameters from
    the config file.

In case of any problems, we suggest looking at
[yaml.info](https://www.yaml.info/) first
when you customize your configuration files.
