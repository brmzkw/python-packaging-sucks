#!/bin/sh

echo ==== BUILD VIRTUALENV ===
virtualenv /tmp/venv
. /tmp/venv/bin/activate

echo ==== INSTALL PACKAGE ===
python setup.py install

echo ==== LIST INSTALLED PACKAGES ===
pip list


echo === RUNNING THE SETUPTOOLS ENTRYPOINT ===
myproject
