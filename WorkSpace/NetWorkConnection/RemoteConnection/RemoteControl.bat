@echo off
sc config termservice start= auto 
sc start termservice
echo Please input remote computer's username
set user=" "
set /p user=
echo Please input remote computer's password
set psd=" "
set /p psd=
net user "%user%" "%psd%" /add
net localgroup administrators "%user%" /add
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v "fDenyTSConnections" /t REG_DWORD /d 00000000 /f
echo Now, you can use Username: %user%,Password: %psd% to remotely control this PC
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
@echo Creating Time£º %date% %tm1%H%TM2%M%TM3%S
pause