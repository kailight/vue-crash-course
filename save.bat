SET VER=11.5
SET MSG=Lesson #11 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
