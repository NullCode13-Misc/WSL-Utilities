@echo off & cls

:getelevated
cls & echo Asking for elevated privileges...
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' (goto START) else (goto getPrivileges) 
:getPrivileges
if '%1'=='ELEV' ( goto START )
set "batchPath=%~f0" & set "batchArgs=ELEV" & set "script=%0" & set script=%script:"=%
IF '%0'=='!script!' ( GOTO PathQuotesDone )
set "batchPath=""%batchPath%"""
:PathQuotesDone
:ArgLoop
IF '%1'=='' (echo.) else (echo.)
:EndArgLoop
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs" & ECHO UAC.ShellExecute "cmd", "/c ""!batchPath! !batchArgs!""", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs"
"%temp%\OEgetPrivileges.vbs" & del "%temp%\OEgetPrivileges.vbs" 

:START
cls & title Part 1 of Enabling WSL 2 & color 3
powershell -Command "& {dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart}" 
powershell -Command "& {dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart}" 
powershell -Command "& {shutdown /r /t 15}" 
exit 
