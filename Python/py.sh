#!/bin/bash

set -e
cd "$(dirname "$0")"

echo "   Installing Python Packages"

pip3 install -r requirements.txt