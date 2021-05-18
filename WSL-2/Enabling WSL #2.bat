@echo off
CLS

:start
@title Part 2 of Enabling WSL 2
@color 3
powershell -Command "& {.\wsl_update_x64.msi}"
echo 50 Percent Completed. Press any key to continue: 
pause>NUL
powershell -Command "& {wsl --set-default-version 2}"
cls 
echo SUCCESS. WSL 2 has been completely installed and setup. Press any key to close.
pause>NUL
exit