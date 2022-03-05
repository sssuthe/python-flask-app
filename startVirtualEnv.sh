#!/bin/bash

# Very simple wrapper around getting your virtual shell running.
virtualenv -p python3 venv
source ./venv/bin/activate
pip3 install -r requirements.txt