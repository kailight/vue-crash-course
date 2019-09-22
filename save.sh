#!/bin/bash

git tag -d 9.5
git add .
git commit . -m "Lesson #9 Test Result"
git tag -a 9.5 -m "Lesson #9 Test Result"
git push -f --tags origin master

