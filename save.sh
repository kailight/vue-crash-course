#!/bin/bash

git tag -d 8.5
git add .
git commit . -m "Lesson #8 Test Result"
git tag -a 8.5 -m "Lesson #8 Test Result"
git push -f --tags origin master

