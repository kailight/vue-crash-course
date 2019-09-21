#!/bin/bash

git tag -d 13.5
git add .
git commit . -m "Lesson #13 Test Result"
git tag -a 12.5 -m "Lesson #13 Test Result"
git push -f --tags origin master

