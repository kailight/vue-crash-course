SET VER=5.0
SET MSG=Lesson #5 Start

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
