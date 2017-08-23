@echo off
color 3f
title Font bulk-install script
echo A|xcopy *.ttf %windir%\fonts\
echo Installation Finished, Press Any key to exist...
pause>nul
exit