#!/bin/bash
a=$(git reflog|awk '{print $1;exit}')
echo $a
git revert $a
git remote set-url origin https://forpix:mdali%40786@github.com/forpix/cherry-pick.git
git push -f origin master
