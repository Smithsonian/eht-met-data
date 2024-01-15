#!/bin/sh

git pull
# the find is limited to 2024 and later, to make this run faster
find . -type f | grep /202[456789] | xargs wc -l | grep  ' 210 ' | awk '{print $2}' | xargs git add
git commit -m autocommit .
git push
