SET VER=9.5
SET MSG=Lesson #9 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
