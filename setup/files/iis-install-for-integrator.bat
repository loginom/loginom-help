@ECHO OFF

set OS_ARC=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" set OS_ARC=x64
IF "%PROCESSOR_ARCHITEW6432%"=="AMD64" set OS_ARC=x64

SET SYS_PATH=%windir%\System32
SET SYS_PATH_NATIVE=%windir%\System32
SET SYS_PATH_x86=%SYS_PATH%

IF "%ProgramFiles%"=="%ProgramFiles(x86)%" ( SET SESSION_ARC=x86) ELSE ( SET SESSION_ARC=x64)
IF %OS_ARC%==x64 IF %SESSION_ARC%==x86 (
  SET SYS_PATH_NATIVE=%windir%\Sysnative
  SET SYS_PATH_x64=%SYS_PATH_NATIVE%
)
IF %OS_ARC%==x64 IF %SESSION_ARC%==x64 (
  SET SYS_PATH_x86=%windir%\sysWOW64
  SET SYS_PATH_x64=%SYS_PATH%
)

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
SET VERSIONS=6.0 6.1 6.2 6.3 6.4 10.0

SET OS_VERSION=100

SET /A I=0
FOR %%V IN (%VERSIONS%) DO (
	VER | FINDSTR /IL "%%~V" > NUL	
	IF !ERRORLEVEL! EQU 0 SET OS_VERSION=!I!
	SET /A I=!I! + 1
)

:: features for enable
SET FEATURES_LIST=IIS-WebServerRole IIS-WebServer IIS-WebServerManagementTools IIS-ManagementScriptingTools
:: features, required Loginom Integrator
SET FEATURES_LIST=%FEATURES_LIST% IIS-ApplicationDevelopment IIS-ISAPIExtensions WAS-WindowsActivationService WAS-ProcessModel

IF %OS_VERSION% GEQ 2 (
:: features, required Loginom Integrator in OS with cores 6.3+
SET FEATURES_LIST=%FEATURES_LIST% IIS-ASPNET45 IIS-NetFxExtensibility45 NetFx4Extended-ASPNET45 WCF-Services45 IIS-ISAPIFilter WCF-HTTP-Activation45
) ELSE (
:: features, required Loginom Integrator in OS with cores 6.0 6.1 6.2
SET FEATURES_LIST=%FEATURES_LIST% IIS-NetFxExtensibility WAS-NetFxEnvironment WAS-ConfigurationAPI WCF-HTTP-Activation 
)

FOR %%F IN (%FEATURES_LIST%) DO SET FEATURES_KEYS=!FEATURES_KEYS! /FeatureName:%%F

IF %OS_VERSION% GEQ 2 SET FEATURES_KEYS=%FEATURES_KEYS% /All

ECHO Enable features
ECHO.
"%SYS_PATH_NATIVE%\dism.exe" /online /enable-feature %FEATURES_KEYS%
IF NOT "%ERRORLEVEL%"=="0" (
IF "%1"=="" PAUSE
EXIT 1
)

ECHO Tune IIS for Loginom Integrator
ECHO.

SET BIN_APPCMD=%SYS_PATH_NATIVE%\inetsrv\appcmd

:: get dotnetfx dir
SET DIR_DOTNET=%WinDir%\Microsoft.NET\Framework
IF "%OS_ARC%"=="x64" SET DIR_DOTNET=%DIR_DOTNET%64

IF EXIST "%DIR_DOTNET%\v4.0.30319" (
:: registration aspnet
"%DIR_DOTNET%\v4.0.30319\Aspnet_regiis.exe" -iru
ECHO Reg isapi: %ERRORLEVEL%
:: allow isapi
"%BIN_APPCMD%" set config /section:isapiCgiRestriction /[path='%DIR_DOTNET%\v4.0.30319\aspnet_isapi.dll'].allowed:True
ECHO Allow isapi: %ERRORLEVEL%
)
IF "%1"=="" PAUSE
EXIT 0
