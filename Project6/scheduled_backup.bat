@echo off
title Scheduled Backup

:loop
echo Backup dijalankan %time%
xcopy "%SRC%" "%DEST%" /E /H /C /I /Y >nul
timeout /t 600 >nul
goto loop