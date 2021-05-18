rem Made by Ishaq [NullCode on XDA]!
rem The code here is VERY easy so you do not need an explanation
@echo off & color 2 & title Detecting Downloaded Distro...

:detecting
if exist Ubuntu-2004.appx (cls & powershell -Command "& {Add-AppxPackage Ubuntu-2004.appx}" & exit) 
if exist Ubuntu-1804.appx (cls & powershell -Command "& {Add-AppxPackage Ubuntu-1804.appx}" & exit) 
if exist Ubuntu-1604.appx (cls & powershell -Command "& {Add-AppxPackage Ubuntu-1604.appx}" & exit) 
if exist Debian-GNU.appx (cls & powershell -Command "& {Add-AppxPackage Debian-GNU.appx}" & exit) 
if exist Kali-Linux.appx (cls & powershell -Command "& {Add-AppxPackage Kali-Linux.appx}" & exit) 
if exist OpenSUSE-Leap.appx (cls & powershell -Command "& {Add-AppxPackage OpenSUSE-Leap.appx}" & exit) 
if exist SUSE-Server.appx (cls & powershell -Command "& {Add-AppxPackage SUSE-Server.appx}" & exit) else (goto notfound)

:notfound
cls
echo.
color 4
echo The downloaded Distro was not found. 
echo Remember that this software is only able to install Distros downloaded from MY 'Download' software.
echo.
echo Oh by the way, this software also cannot install Fedora Remix automatically.
echo Sorry you have to do it by yourself if you chose Fedora.
echo.
set /p var=So, shall I call upon my Download Software (Y/N): 

if %var%==Y (call "Download Distro.bat") 
if %var%==y (call "Download Distro.bat") 
if %var%==N (echo. & echo Guess it's goodbye then & timeout /t 2 >nul & exit)
if %var%==n (echo. & echo Guess it's goodbye then & timeout /t 2 >nul & exit)
