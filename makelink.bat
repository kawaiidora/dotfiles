@echo off
set batpath=%~dp0

if not exist %USERPROFILE%\_vimrc (
	mklink %USERPROFILE%\_vimrc %batpath%\vimrc 
)

pause
