---
title: 'VS Code Settings'
---

We are developing OpenTrafficCam using [Visual Studio Code](https://code.visualstudio.com/) using the following extensions:

* [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)
* [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
* [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
* [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
* [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)

## Pylance Settings

To solve import errors in the repository, we need to add an extra path to the pylance config.

For example in the workspace settings of OTCamera add:

```json
"python.analysis.extraPaths": [
  "./OTCamera"
]
```

Or set it using the Settings-UI (Workspace -> Pylance -> Python - Analysis: Extra Path -> add './OTCamera')

## Snippets

To comfortably insert code use snippets. You can open the configuration file for a specific language to add or modify the user snippets: `Ctrl` + `Shift` + `p` and `Preferences: Configure User Snippets`.

You can insert the user snippets by start typing the "prefix" value. For example start typing `gpl_` and autocompletection should recognize the user snippets stated below.

### GPL License Information

Add the following snippet to `vscodedata/user/snippets/python.json`

```json
"gpl_license_header": {
        "prefix": "gpl_add_head",
        "body":[
            "$LINE_COMMENT ${1:Program Name and Function}",
            "$LINE_COMMENT Copyright (C) $CURRENT_YEAR OpenTrafficCam Contributors",
            "$LINE_COMMENT <https://github.com/OpenTrafficCam",
            "$LINE_COMMENT <team@opentrafficcam.org>",
            "$LINE_COMMENT",
            "$LINE_COMMENT This program is free software: you can redistribute it and/or modify",
            "$LINE_COMMENT it under the terms of the GNU General Public License as published by",
            "$LINE_COMMENT the Free Software Foundation, either version 3 of the License, or",
            "$LINE_COMMENT (at your option) any later version.",
            "$LINE_COMMENT",
            "$LINE_COMMENT This program is distributed in the hope that it will be useful,",
            "$LINE_COMMENT but WITHOUT ANY WARRANTY; without even the implied warranty of",
            "$LINE_COMMENT MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the",
            "$LINE_COMMENT GNU General Public License for more details.",
            "$LINE_COMMENT",
            "$LINE_COMMENT You should have received a copy of the GNU General Public License",
            "$LINE_COMMENT along with this program.  If not, see <https://www.gnu.org/licenses/>.",
            "",
        ],
        "description": "Add GPLv3 license information in source code."
    }
```

Add a short description and use tab to jump to the end of the snippet.
