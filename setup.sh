#!/bin/bash
set -e

# Check to make sure user is running on mac
if [[ ! "$OSTYPE" == "darwin"* ]]; then
    echo "Quickstart script is only supports Mac at this time..."
    exit 1
fi

# install homebrew
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew installed, checking for updates..."
    brew update
fi

# install python
brew install python
# install virtualenv
pip3 install -U virtualenv pylint