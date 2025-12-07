@echo off
title Recovery Data

set BASE=%USERPROFILE%\Desktop
set SRC=%BASE%\SimulasiDrive_D
set DEST=%BASE%\SimulasiDrive_C\DataRecovery_%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%

mkdir "%DEST%"
echo Recovery dijalankan pada %date% %time% > "%DEST%\recovery_log.txt"

echo Menyalin data...
xcopy "%SRC%" "%DEST%" /E /H /C /I /Y >> "%DEST%\recovery_log.txt"

echo Verifikasi...
dir "%DEST%" /s >> "%DEST%\recovery_log.txt"

echo Selesai!
pause