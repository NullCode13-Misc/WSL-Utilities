@echo off
CLS

:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)
endlocal

:start
@color 3
mode con: cols=90 lines=30
color 3
@title WSL 1 Management
rem [                              l                              l                              l]
REM this is the total number of lines ^ [WITH DIVIDING LINES]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                ------------------------------------------------------------
echo                l            Welcome to NullCode's WSL 1 Manager!           l
echo                ------------------------------------------------------------
echo                l                     List of Options:                     l
echo                ------------------------------------------------------------ 
echo                l               1: Enable  WSL 1   (Press E)               l
echo                l               2: Disable WSL 1   (Press D)               l
echo                l               3: Get the link for WSL 2  (Press G)       l
echo                ------------------------------------------------------------ 
set /p choice=Choose your option: 
if %choice%==E ( 
cls
powershell -Command "& {dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart}"
powershell -Command "& {shutdown /r /t 15}"
echo. 
echo WSL has been enabled! 
echo It should restart automatically.
echo If it doesn't, reboot after you're done!
echo.
echo Press any key to exit.
pause>NUL 
exit
) 

if %choice%==D ( 
cls
powershell -Command "& {Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux}"
powershell -Command "& {shutdown /r /t 15}"
echo. 
echo WSL has been disabled! Remember to uninstall the Distro from the Start Menu and REBOOT.
echo Press any key to exit.
pause>NUL 
exit
) 

if %choice%==G ( 
cls
echo.
echo OK here is the XDA link for managing WSL-2 if you have Windows 10 20H1.
echo https://forum.xda-developers.com/windows-10/development/script-wsl-toolkit-windows-10-x64-t4177849/post83730405#post83730405 | clip
echo.
echo I have copied the link to your clipboard. Just go to your browser and paste.
echo Close this window. 
pause>NUL 
exit
) else goto start
