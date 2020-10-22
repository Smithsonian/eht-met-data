#!/bin/sh

cd ~/eht-met-data
find . -type f | grep /202 | xargs wc -l | grep  ' 210 ' | awk '{print $2}' | xargs git add
git commit -m autocommit .
git push
