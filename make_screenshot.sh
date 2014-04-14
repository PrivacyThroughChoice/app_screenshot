#!/bin/sh

# use privileged mode
set -p

dir=$(dirname $0)

PHANTOMJS_PATH=/usr/local/bin/phantomjs

$PHANTOMJS_PATH $dir/screenshot_helper.js "$1" | base64 -D | convert - -thumbnail 256x192 -
