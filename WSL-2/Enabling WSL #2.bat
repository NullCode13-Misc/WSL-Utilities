@echo off & cls & title Part 2 of Enabling WSL 2 & color 3
:start
powershell -Command "& {.\wsl_update_x64.msi}"
echo 50%% completed. Press any key to continue: & pause>NUL
powershell -Command "& {wsl --set-default-version 2}" 
cls & echo WSL 2 has been completely installed and set up. & timeout /t 3 >NUL
exit /b 0
