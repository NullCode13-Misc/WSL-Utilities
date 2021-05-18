rem Made by Ishaq [NullCode on XDA]!
rem The code here is VERY easy so you do not need an explanation
@echo off

:detecting
@title Detecting Downloaded Distro...
color 2

if exist Ubuntu-2004.appx (
goto 2004
) 
if exist Ubuntu-1804.appx (
goto 1804
) 
if exist Ubuntu-1604.appx (
goto 1604
) 
if exist Debian-GNU.appx (
goto deb
) 
if exist Kali-Linux.appx (
goto kali
) 
if exist OpenSUSE-Leap.appx (
goto open
) 
if exist SUSE-Server.appx (
goto suse
) else goto notfound

:2004
cls
powershell -Command "& {Add-AppxPackage Ubuntu-2004.appx}"
exit

:1804
cls
powershell -Command "& {Add-AppxPackage Ubuntu-1804.appx}"
exit

:1604
cls
powershell -Command "& {Add-AppxPackage Ubuntu-1604.appx}"
exit

:deb
cls
powershell -Command "& {Add-AppxPackage Debian-GNU.appx}"
exit

:kali
cls
powershell -Command "& {Add-AppxPackage Kali-Linux.appx}"
exit

:open
cls
powershell -Command "& {Add-AppxPackage OpenSUSE-Leap.appx}"
exit

:suse
cls
powershell -Command "& {Add-AppxPackage SUSE-Server.appx}"
exit

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
set /p sss=So, shall I call upon my Download Software (Y/N): 

if %sss%==Y ( 
call "Download Distro.bat"
) 
if %sss%==y ( 
call "Download Distro.bat"
) 
if %sss%==N ( 
echo.
echo Guess it's goodbye then
timeout /t 2
exit
) 
if %sss%==n ( 
echo.
echo Guess it's goodbye then
timeout /t 2
exit
) 