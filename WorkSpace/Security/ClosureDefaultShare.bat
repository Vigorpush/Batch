@echo off


title Default Share Files Cleaner
echo. 
echo ------------------------------------------------------ 
echo. 
echo Start to delete default share. 
echo. 
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do @(
    if exist %%a:\nul (
        net share %%a$ /delete>nul 2>nul && echo Successfully delete default file share called %%a$  || echo default share file called %%a$ does not exist
    ) 
)
net share admin$ /delete>nul 2>nul && echo Successfully delete default share file called admin$ || echo default share file called admin$ does not exist
echo.
echo ------------------------------------------------------ 
echo.
net stop Server>nul 2>nul && echo Server Service Deleted.
net start Server>nul 2>nul && echo Server Service Started.
echo. 
echo ------------------------------------------------------ 
echo. 
echo Edit Reg to modify default system configuration.
echo. 
echo Createing reg file. 
echo Windows Registry Editor Version 5.00> c:\delshare.reg 
:: 通过注册表禁止Admin$共享，以防重启后再次加载
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]>> c:\delshare.reg
echo "AutoShareWks"=dword:00000000>> c:\delshare.reg 
echo "AutoShareServer"=dword:00000000>> c:\delshare.reg 
:: 删除IPC$共享，本功能需要administritor权限才能成功删除
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]>> c:\delshare.reg
echo "restrictanonymous"=dword:00000001>> c:\delshare.reg
echo import reg to modify default system configuration. 
regedit /s c:\delshare.reg 
del c:\delshare.reg && echo Temp files have already deleted. 
echo. 
echo ------------------------------------------------------ 
echo. 
echo Program has already delete all default share files. 
echo. 
echo Press any key to quit...
pause>nul