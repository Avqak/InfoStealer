@echo off
set target_folder=%~dp0Collected_Files
if not exist "%target_folder%" mkdir "%target_folder%"

if exist "%USERPROFILE%\Desktop\*" (
    xcopy "%USERPROFILE%\Desktop\*" "%target_folder%\Desktop" /s /i /y /h >nul 2>&1
)

if exist "%USERPROFILE%\Downloads\*" (
    xcopy "%USERPROFILE%\Downloads\*" "%target_folder%\Downloads" /s /i /y /h >nul 2>&1
)

if exist "%USERPROFILE%\Documents\*" (
    xcopy "%USERPROFILE%\Documents\*" "%target_folder%\Documents" /s /i /y /h >nul 2>&1
)

set logfile=%target_folder%\SIMULATION_REPORT.txt
echo SAFE FILE COLLECTION SIMULATION > "%logfile%"
echo Collected files from Desktop, Downloads, and Documents. >> "%logfile%"
echo Simulation complete! >> "%logfile%"

start "" "%logfile%"
