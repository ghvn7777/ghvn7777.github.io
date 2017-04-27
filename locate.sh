#!/bin/bash

rm -rf content/.*
#find content/ -name ".*" -print | xargs rm -rf
source activate pelican
pelican content/
cd output && python -m SimpleHTTPServer
