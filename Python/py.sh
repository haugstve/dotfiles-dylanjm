#!/bin/bash

set -e
cd "$(dirname "$0")"
echo "Setting up Python"
brew install python
brew install python3

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel

echo "Installing Python Packages"
pip3 install -r requirements.txt