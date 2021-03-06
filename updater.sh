#!/bin/bash

cd ./github_stars
./wget_github_stars.sh

cd ../qiita_lgtm
node ./puppeteer_qiita.js

cd ../bookmeter_wish
node ./puppeteer_bookmeter.js

cd ..
date1="`date --iso-8601=minutes`"
git add .
git commit -m "updated: $date1"

git push origin master
