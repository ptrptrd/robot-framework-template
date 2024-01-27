# Robot Framework Template

This repository provides a template to kickstart test project using [Robot Framework](https://robotframework.org/).

## Description

- Separation between keywords library and test files
- Import keywords library written in Python as module
- Build the keywords library as Python package

## Structure

~~~
.
├── ...
├── src
│   ├── lib                     # Library folder
│   │   ├── pythonmod           # Keywords library in Python
│   │   └── robotmod            # Keywords library in Robot
│   └── test                    # Test Folder, which uses keywords from lib
└── ...
~~~

## Development Tools

### Poetry

[Poetry](https://python-poetry.org/) is used to package and manage dependencies in this project.
The dependencies are listed in [pyproject.toml](./pyproject.toml).

To start developing in python virtual environment, execute the following commands:

~~~bash
# Optional: Create virtual environment in the root directory of project
poetry config virtualenvs.in-project true

# Install listed dependencies in virtual environment
poetry install
~~~

With those commands the dependencies will be installed in .venv folder in the project root directory.
The existing test cases can be executed with the following command:

~~~bash
poetry run robot ./src/test/
~~~

The result can be observed directly in the terminal, in which the command was executed.
More detailed report (i.e. log.html) is also generated in the directory of command execution.

### Pre Commit

[Pre Commit](https://pre-commit.com/) is a tool to manage git hook.
E.g. with a pre-commit hook, files in stash will be checked before the commit is executed.

Install the hook defined in [configuration file](./.pre-commit-config.yaml) by executing the following command:

~~~bash
# If poetry is used: poetry run pre-commit install
pre-commit install
~~~

### Dev Container

[Dev Container](https://containers.dev/) offers the possiblity to develop in enclosed development container.

Using the CLI adevelopment container as described in [configuration file](./.devcontainter/devcontainer.json) can be spun up:

~~~bash
npm install -g @devcontainer/cli
devcontainer up
~~~

### VS Code

If VS Code is choosen as editor, there are some extensions, which can help with the development:
- [Dev Container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Robot Framework LSP](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)

Additional setting for using VS Code with Python virtual environment:
~~~json
{
    // Set path of Python executable for both Robot and Python LSP
    "robot.python.executable": "${workspaceFolder}/.venv/bin/python",
    "python.defaultInterpreterPath": "${workspaceFolder}/.venv/bin/python"
}
~~~
