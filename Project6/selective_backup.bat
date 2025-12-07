@echo off
title Selective Backup

set BASE=%USERPROFILE%\Desktop
set SRC=%BASE%\SimulasiDrive_D

echo Pilih folder (1-10):
set /p pilih=Folder_: 

set FOLDER=%SRC%\Folder_%pilih%
set DEST=%BASE%\SimulasiDrive_C\Selective_%pilih%

mkdir "%DEST%"
echo Backup folder %pilih% > "%DEST%\log.txt"

xcopy "%FOLDER%" "%DEST%" /E /H /C /I /Y >> "%DEST%\log.txt"

echo Selesai!
pause