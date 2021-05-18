@echo off
@title Distro Downloader
cls
color 3
rem Made by Ishaq [NullCode on XDA]!

:main
rem This is the choice selector
echo.
echo These are the available Distros:
echo. 
echo 1) Ubuntu 20.04
echo 2) Ubuntu 18.04
echo 3) Ubuntu 16.04
echo 4) Debian GNU
echo 5) Kali Linux
echo 6) OpenSUSE Leap 42
echo 7) SUSE Linux Enterprise Server 12
echo 8) Fedora REMIX (exceptional)
echo. 
set /p choice=Choose your distro (Ex: 5): 

rem These are the if conditions
if %choice%==1 (
goto u20
) 

if %choice%==2 (
goto u18
) 

if %choice%==3 (
goto u16
) 

if %choice%==4 (
goto deb
) 

if %choice%==5 (
goto kali
) 

if %choice%==6 (
goto open
) 

if %choice%==7 (
goto server
) 

rem The wrongmain is here if a person puts anything other than numbers
if %choice%==8 (
goto fedora
) else goto wrongmain 

:wrongmain
rem The wrongmain is basically the screen above except it has the WRONG warning

cls
echo.
echo WRONG. CHOOSE PROPERLY
echo. 
echo These are the available Distros:
echo. 
echo 1) Ubuntu 20.04
echo 2) Ubuntu 18.04
echo 3) Ubuntu 16.04
echo 4) Debian GNU
echo 5) Kali Linux
echo 6) OpenSUSE Leap 42
echo 7) SUSE Linux Enterprise Server 12
echo 8) Fedora REMIX (exceptional) 
echo.
set /p choice=Choose your distro (Ex: 5): 

if %choice%==1 (
goto u20
) 

if %choice%==2 (
goto u18
) 

if %choice%==3 (
goto u16
) 

if %choice%==4 (
goto deb
) 

if %choice%==5 (
goto kali
) 

if %choice%==6 (
goto open
) 

if %choice%==7 (
goto server
) 

if %choice%==8 (
goto fedora
) else goto wrongmain 

rem These are the download screens. I have used curl.exe here because it simplifies downloading the OS software.
rem You could also download and install from the Microsoft Store [it has more options], but I value my privacy.

:u20
cls
echo.
echo NOW DOWNLOADING UBUNTU 20.04; PLEASE BE PATIENT
echo.
curl.exe -L -o Ubuntu-2004.appx https://aka.ms/wslubuntu2004
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto set20

:set20
set /p run=Download Complete! Do you want to install the distro right now? (Y/N): 
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:u18
cls
echo.
echo NOW DOWNLOADING UBUNTU 18.04; PLEASE BE PATIENT
echo.
curl.exe -L -o Ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto set18 

:set18
set /p run=Download Complete! Do you want to install the distro right now?
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:u16
cls
echo.
echo NOW DOWNLOADING UBUNTU 16.04; PLEASE BE PATIENT
echo.
curl.exe -L -o Ubuntu-1604.appx https://aka.ms/wsl-ubuntu-1604
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto set16

:set16
set /p run=Download Complete! Do you want to install the distro right now?
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:deb
cls
echo.
echo NOW DOWNLOADING Debian GNU; PLEASE BE PATIENT
echo.
curl.exe -L -o Debian-GNU.appx https://aka.ms/wsl-debian-gnulinux
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto setdeb

:setdeb
set /p run=Download Complete! Do you want to install the distro right now?
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:kali
cls
echo.
echo NOW DOWNLOADING Kali-Linux; PLEASE BE PATIENT
echo.
curl.exe -L -o Kali-Linux.appx https://aka.ms/wsl-kali-linux-new
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto setkali

:setkali
set /p run=Download Complete! Do you want to install the distro right now?
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:open
cls
echo.
echo NOW DOWNLOADING OpenSUSE Leap 42; PLEASE BE PATIENT
echo.
curl.exe -L -o OpenSUSE-Leap.appx https://aka.ms/wsl-opensuse-42
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto setopen

:setopen
set /p run=Download Complete! Do you want to install the distro right now?
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:server
cls
echo.
echo NOW DOWNLOADING SUSE Linux Server 12; PLEASE BE PATIENT
echo.
curl.exe -L -o SUSE-Server.appx https://aka.ms/wsl-sles-12
echo.

if %errorlevel%==6 ( 
cls
@color 4
echo Download Failed! You currently do not have an Internet Connection. Please try again.
echo Press any key to close the Program.
pause>NUL 
exit
) else goto setsrv

:setsrv
set /p run=Download Complete! Do you want to install the distro right now?
if %run%==y (
cls
call "Install Distro.bat"
) 
if %run%==Y (
cls
call "Install Distro.bat"
) else exit

:fedora
cls
echo.
echo Now this version of Linux is special.
echo It needs a person to open a web browser and download it from there.
echo.
echo For your own good, I [Ishaq] have copied the link to your clipboard :) 
echo.
echo Now press enter to close the batch file, then you will open your browser, paste the link and download
echo https://github.com/WhitewaterFoundry/WSLFedoraRemix/releases/ | clip
pause>NUL 
exit