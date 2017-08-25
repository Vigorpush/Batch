@echo off
set /p getway="Please Input Gateway IP Address:"%getway%
arp -a|find "%getway% "
pause