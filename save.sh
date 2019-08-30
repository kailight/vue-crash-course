#!/bin/bash

git tag -d 5.5
git add .
git commit . -m "Lesson #5 Test Result"
git tag -a 5.5 -m "Lesson #5 Test Result"
