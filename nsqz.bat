@echo off

:start
cls
q C:\q\customScripts\namespaceQuiz\nsqz.q
echo:

:question
set /p rstart=Do you want to restart the quiz? (y/n) 

if "%rstart%"=="y" (
	goto start
)
else (
	if "%rstart%"=="n" (
		exit
	)
	else (
		cls
		goto question
	)
)