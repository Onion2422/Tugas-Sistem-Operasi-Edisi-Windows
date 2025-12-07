@echo off
title Recovery PDF & DOCX Only

set BASE=%USERPROFILE%\Desktop
set SRC=%BASE%\SimulasiDrive_D
set DEST=%BASE%\SimulasiDrive_C\DataRecovery_Filtered

mkdir "%DEST%"
echo Backup PDF & DOCX pada %date% %time% > "%DEST%\recovery_log.txt"

for /r "%SRC%" %%f in (*.pdf *.docx) do (
    echo Copy: %%~nxf
    xcopy "%%f" "%DEST%" /I /Y >> "%DEST%\recovery_log.txt"
)

echo Total file: >> "%DEST%\recovery_log.txt"
dir "%DEST%" /b /s | find /c ":" >> "%DEST%\recovery_log.txt"

echo Selesai!
pause