#!/bin/bash

# Install poetry
curl -sSL https://install.python-poetry.org | python3 -

# Create virtual environment
poetry config virtualenvs.in-project true
poetry install
