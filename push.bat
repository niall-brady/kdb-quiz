set /p cmnt="Enter a commit comment: "

cd C:/q/customscripts/namespacequiz/

git add .
git status
git commit -m "%cmnt%"
git push origin main

@echo off
echo DONE
echo[
pause