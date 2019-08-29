SET VER=13.5
SET MSG=Lesson #13 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
