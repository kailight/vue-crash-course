SET VER=10.5
SET MSG=Lesson #10 Test Result

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
