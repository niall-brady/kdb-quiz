@echo off

title kdb+ Quiz

:start
cls
q %~dp0/main.q
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