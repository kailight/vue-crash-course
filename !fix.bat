SET VER=13.0
SET MSG=Lesson #13 Start

git tag -d %VER%
git commit . -m "%MSG%"
git tag -a %VER% -m "%MSG%"
