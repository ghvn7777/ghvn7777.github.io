#!/bin/bash

rm -rf content/.ipy*
source activate pelican
pelican content/
cd output && python -m SimpleHTTPServer
