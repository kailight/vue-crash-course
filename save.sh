#!/bin/bash

git tag -d 10.5
git add .
git commit . -m "Lesson #10 Test Result"
git tag -a 10.5 -m "Lesson #10 Test Result"
git push -f --tags origin master

