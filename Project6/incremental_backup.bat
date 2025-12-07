@echo off
title Incremental Backup

set SRC=%USERPROFILE%\Desktop\SimulasiDrive_D
set DEST=%USERPROFILE%\Desktop\SimulasiDrive_C\Incremental

mkdir "%DEST%"

for /r "%SRC%" %%f in (*) do (
    set file=%%~nxf

    if not exist "%DEST%\%%~nxf" (
        echo Copy baru: %%~nxf
        xcopy "%%f" "%DEST%" /I /Y >nul
    ) else (
        for %%a in ("%%f") do for %%b in ("%DEST%\%%~nxf") do (
            if %%~ta GTR %%~tb (
                echo Update: %%~nxf
                xcopy "%%f" "%DEST%" /I /Y >nul
            )
        )
    )
)

echo Incremental selesai!
pause