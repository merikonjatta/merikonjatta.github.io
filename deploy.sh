#!/usr/bin/env bash

git add -A
git commit -m "Source update"


git checkout master
git reset --hard HEAD
git read-tree source:./_site

rm -rf .sass-cache
echo "" > .nojekyll

git add -A
git commit -m "Site update"
git push

git checkout source
