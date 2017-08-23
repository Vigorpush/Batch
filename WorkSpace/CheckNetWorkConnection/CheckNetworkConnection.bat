echo checking internet connection

if NOT exist ip.txt echo ip.txt does not exist
if exist checklist.txt del /q checklist.txt
for /f %%i in (ip.txt) do (
	ping -n 1 %%i||if errorlevel 1 echo %%i Needed to check >>checklist.txt
	cls
	)
cls
pause