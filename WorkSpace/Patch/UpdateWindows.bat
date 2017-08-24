@Echo Off
Title Install Windows  Update pack
Echo Install Windows Patches, please wait......
:: needed to put this file into Patches folder.
:: C:\Windows\SoftwareDistribution\Download\Install  <ZIP Download Path>
:: C:\Windows\System32\catroot\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}  <Upzip Download Path>
:: C:\Windows\servicing\Packages     <Installation Path>

for %%i in (*.exe) do %%i /passive /norestart /nobackup /quiet
For %%F In (*.msu) Do Call :Update %%F
:: Shutdown.exe -r -t 19
Exit
:Update
Echo Installation Finished
Start /Wait %1 /quiet /norestart
GoTo :EOF
Exit


