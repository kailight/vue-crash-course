SET VER=5.5
SET MSG=Lesson #5 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
