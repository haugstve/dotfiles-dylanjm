#!/bin/bash

set -e
cd "$(dirname "$0")"

pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel

echo "   Installing Python Packages"
pip3 install -r requirements.txt