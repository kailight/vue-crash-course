SET VER=7.5
SET MSG=Lesson #7 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
