#!/bin/bash

rm -rf content/.*
find content/ -name ".*" -print | xargs rm -rf
pelican content/
cd output && python -m SimpleHTTPServer
