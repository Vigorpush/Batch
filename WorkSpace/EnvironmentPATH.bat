@ECHO OFF

:: Assign all Path variables
:: If you want to change the system-wide environment variables, you have to use /M
:: Example
:: SET PHP="%HOMEDRIVE%\wamp\bin\php\phpversion" /M


::php5.4.16
SET PHP="%HOMEDRIVE%\wamp\bin\php\phpversion" 
::System32
SET SYSTEM32=";%HOMEDRIVE%\Windows\System32"

SET ANT=";%HOMEDRIVE%%HOMEPATH%\Downloads\apache-ant-1.9.0-bin\apache-ant-1.9.0\bin"

SET GRADLE=";%HOMEDRIVE%\tools\gradle-1.6\bin;"

SET ADT=";%HOMEDRIVE%\tools\adt-bundle-windows-x86-20130219\eclipse\jre\bin"

SET ADTTOOLS=";%HOMEDRIVE%\tools\adt-bundle-windows-x86-20130219\sdk\tools"

SET ADTP=";%HOMEDRIVE%\tools\adt-bundle-windows-x86-20130219\sdk\platform-tools"

SET YII=";%HOMEDRIVE%\wamp\www\yii\framework"

SET NODEJS=";%HOMEDRIVE%\ProgramFiles\nodejs"

SET CURL=";%HOMEDRIVE%\tools\curl_734_0_ssl"

SET COMPOSER=";%HOMEDRIVE%\ProgramData\ComposerSetup\bin"

SET GIT=";%HOMEDRIVE%\Program Files\Git\cmd"

:: Set Path variable
:: To use Setx
:: setx will truncate the value to 1024 characters
:: default SETX set to HKEY_CURRENT_USER
setx PATH "%PHP%%SYSTEM32%%NODEJS%%COMPOSER%%YII%%GIT%" /m

:: Set Java variable
setx JAVA_HOME "%HOMEDRIVE%\ProgramFiles\Java\jdk1.7.0_21" /m

PAUSE