@echo off
title Show IP
color F9
ipconfig /all
@echo -
for /f "tokens=2 delims=:" %%i in ('ipconfig^|findstr "Address"') do set ip=%%i
@echo ==================[Your IP information:%ip%]===============
@echo -
ipconfig /all>IP.txt
Echo Information has already saved in IP.txt &pause>NUL 
for /f "tokens=2 delims=:" %i in ('ipconfig^|findstr "Address"') do echo