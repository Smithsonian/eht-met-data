#!/bin/sh

git pull
# this is much faster if you only do the current year
find . -type f | grep /202[6789] | xargs wc -l | grep  ' 210 ' | awk '{print $2}' | xargs git add
git commit -m autocommit .
git push
