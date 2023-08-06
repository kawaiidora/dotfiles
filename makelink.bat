@echo off
set batpath=%~dp0

set vimrcpath=%USERPROFILE%\_vimrc

set vimfilespath=%USERPROFILE%\vimfiles

if exist %vimrcpath% (
    del /f %vimrcpath%
)

if exist %vimfilespath% (
    rmdir /f %vimfilespath%
)

mklink %vimrcpath% %batpath%\userconfig.vim
mklink /d %vimfilespath% %batpath%\vimfiles
 
:: pause
