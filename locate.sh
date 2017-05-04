#!/bin/bash

find -name ".ipy*" -print | xargs rm -rf
source activate pelican
pelican content/
cd output && python -m SimpleHTTPServer
