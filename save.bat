SET VER=8.5
SET MSG=Lesson #8 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
