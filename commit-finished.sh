#!/bin/sh

# the find is limited to 2021 and later, to make this run faster
find . -type f | grep /202[123456789] | xargs wc -l | grep  ' 210 ' | awk '{print $2}' | xargs git add
git commit -m autocommit .
git push
