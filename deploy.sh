#!/bin/bash -eu
cd docs
rm -f meetingtimer_deploy_key meetingtimer_deploy_key.enc deploy.sh .travis.yml package.json
git init
git add .
git commit -m "Publishing site on `date "+%Y-%m-%d %H:%M:%S"`"
git push -f git@github.com:medi-y-sato/meetingTimer.git master:gh-pages