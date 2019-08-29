SET VER=6.5
SET MSG=Lesson #6 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
