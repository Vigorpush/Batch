@echo off 
netsh -c interface dump >NetworkInformation.txt 
netstat -a >>NetworkInformation.txt 
:loop 
cls 
set a= 
set/p a=1.....Network Information, 2.....Reset, Q.....Exit 
if "%a%"=="1" start NetworkInformation.txt 
if "%a%"=="2" netsh -f c:\gongsi.txt 
if "%a%"=="q" exit 
goto loop