#!/bin/bash

git tag -d 3.5
git add .
git commit . -m "Lesson #3 Test Result"
git tag -a 3.5 -m "Lesson #3 Test Result"
git push -f --tags origin master

