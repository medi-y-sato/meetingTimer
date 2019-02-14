#!/bin/bash -eu
cd dist
git init
git add .
git commit -m "Publishing site on `date "+%Y-%m-%d %H:%M:%S"`"
git push -f git@github.com:medi-y-sato/meetingTimer.git master:gh-pages