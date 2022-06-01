# Coding (Python)

Coding standards are not about right and wrong or good and bad.
They are about uniformity, so people can easily read and contribute to the code regardless who worked on the software before.

For now, nearly all code is Python so we just agreed on coding conventions for the Python programming language.
We basically follow the [PEP 8 Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/).
A good summary and some additions can be found in the [Hitchhikers Guide](https://docs.python-guide.org/writing/style/) or at [RealPython.com](https://realpython.com/python-pep8/).
Below we defined what we consider the most important standards.

## Naming Conventions

All names should be as short as possible but as long as necessary to understand them.

### General

The following table from [RealPython.com](https://realpython.com/python-pep8/#naming-styles) summarizes the PEP8 naming conventions:

| Type     | Naming Convention                                                                                               | Examples                                      |
| -------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| Function | Use a lowercase word or words. Separate words by underscores to improve readability.                            | ```function, my_function```                   |
| Variable | Use a lowercase single letter, word, or words. Separate words with underscores to improve readability.          | ```x, var, my_variable```                     |
| Class    | Start each word with a capital letter. Do not separate words with underscores. This style is called camel case. | ```Model, MyClass```                          |
| Method   | Use a lowercase word or words. Separate words with underscores to improve readability.                          | ```class_method, method```                    |
| Constant | Use an uppercase single letter, word, or words. Separate words with underscores to improve readability.         | ```CONSTANT, MY_CONSTANT, MY_LONG_CONSTANT``` |
| Module   | Use a short, lowercase word or words. Separate words with underscores to improve readability.                   | ```module.py, my_module.py```                 |
| Package  | Use a short, lowercase word or words. Do not separate words with underscores.                                   | ```package, mypackage```                      |

### Files, Folder, Dirs

| Naming Convention | Examples                                      |
| ----------------- | --------------------------------------------- |
| dir               | D:\tmp\                                       |
| filename          | testfile                                      |
| suffix            | \_detections                                  |
| file type         | .csv                                          |
| file              | D:\tmp\testfile_detections.csv                |
| path              | "D:\tmp\" or "D:\tmp\testfile_detections.csv" |

### File extensions

Files get an extension according to their content.

| Extension     | Description                                                     |
| ------------- | --------------------------------------------------------------- |
| \.otdet       | detections as bounding boxes                                    |
| \.ottrk       | trajectories in pixel (and UTM) coordinates                     |
| \.otrfpts     | reference points to convert pixel to UTM coordinates            |

## Code documentation

Each module, function, class or method should be described in a docstring ([Google style](https://google.github.io/styleguide/pyguide.html#381-docstrings))

### Docstrings for Modules

Each file should start with the [license snippet](/contribute/vs-code-settings#snippets) followed by a docstring describing the contents and usage of the module:

```py
"""A one line summary of the module or program, terminated by a period.

Leave one blank line.  The rest of this docstring should contain an
overall description of the module or program.  Optionally, it may also
contain a brief description of exported classes and functions and/or usage
examples.

  Typical usage example:

  foo = ClassFoo()
  bar = foo.FunctionBar()
"""
```

### Docstrings for Functions

Each function must be described by a docstring:

```py
def hello_world(message: str = "Hello World", author: str = "Santa Claus"):
    """Deliver a message from an author to the world.

    "author says message"

    Args:
        message (str, optional): Message to deliver. Defaults to "Hello World".
        author (str, optional): Author name. Defaults to "Santa Claus".

    Returns:
        str: the message said
    """
    msg = author + " says " + message
    print(msg)

    return msg
```

!!! note
    If you are using VS Code, you may want to use the [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) extension.

### Comments

If it is necessary to explain your code in between, use single line or block comments for some (or all) code that follows:

```py
# This is an example for a single line comment

# This is an 
# example for a
# block comment
```

Try to avoid inline comments.

## Dependencies

We try to develop OpenTrafficCam using as few dependencies as possible.
For basic functionality we prefer packages that come with the Python standard distribution (like pathlib or Tkinter).
However, OpenTrafficCam would not be possible without code from third party libraries, especially when it comes to videos, images, data analysis, neural networks or web development.
These are the libraries we intend to use for specific functionalities throughout the whole framework (we are grateful to the authors):

| Functionality      | Library                                                                                                                         |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| Paths              | [pathlib](https://docs.python.org/3/library/pathlib.html) (distributed with Python since 3.4)                                   |
| Videos, Images     | [OpenCV](https://pypi.org/project/opencv-python/)                                                                               |
| Neural networks    | [PyTorch](https://pypi.org/project/torch/), [torchvision](https://pypi.org/project/torchvision/)                                |
| Data handling      | [pandas](https://pypi.org/project/pandas/), [NumPy](https://pypi.org/project/numpy/)                                            |
| Shape handling     | [GeoPandas](https://pypi.org/project/geopandas/), [Shapely](https://pypi.org/project/Shapely/)                                  |
| Plotting, graphing | [Plotly](https://pypi.org/project/plotly/)                                                                                      |
| User interface     | [Tkinter](https://docs.python.org/3/library/tkinter.html)                                                                            |
| Web                | [Dash](https://pypi.org/project/dash/) (dashboards) |

## Linting/Autoformatting

To match PEP8 specs and write pretty code we use [flake8](https://github.com/PyCQA/flake8) to check against structural and style errors and [black](https://github.com/psf/black) for autoformatting.
Additionally the package [flake8-docstrings](https://pypi.org/project/flake8-docstrings/) can be used to lint the docstrings.

The following settings are set in the `.flake8` file:

```ini
[flake8]
max-line-length = 88
docstring-convention=google
```
