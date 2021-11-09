@echo on

set /p cmnt="Enter a commit comment: "

cd C:/q/customscripts/namespacequiz/

git add .
git commit -m '%cmnt%'
git push origin main

pause