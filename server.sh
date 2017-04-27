#!/bin/bash

source activate pelican
pelican content -s publishconf.py
git checkout dev
git add .
git commit -m "$1"
git push origin dev
ghp-import output -b master
git push origin master
