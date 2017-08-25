@echo off
:1
title End Process
color f1
mode con: cols=40 lines=18
echo.
set /p run=Please input the process name you want end
::ntsd -c q -pn %run%
taskkill /f /t /im  %run% 
pause>nul



