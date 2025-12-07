@echo off
title Setup Simulasi Data Recovery
echo Membuat struktur folder simulasi...

set BASE=%USERPROFILE%\Desktop

mkdir "%BASE%\SimulasiDrive_D"
mkdir "%BASE%\SimulasiDrive_C"

for /l %%i in (1,1,10) do (
    echo Membuat Folder_%%i
    mkdir "%BASE%\SimulasiDrive_D\Folder_%%i"

    mkdir "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_A"
    mkdir "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_B"
    mkdir "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_C"

    echo isi file > "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_A\dokumen_%%i_A.pdf"
    echo isi file > "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_A\data_%%i_A.csv"
    echo isi file > "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_A\catatan_%%i_A.txt"
    echo isi file > "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_A\laporan_%%i_A.docx"
    echo isi file > "%BASE%\SimulasiDrive_D\Folder_%%i\SubFolder_A\aplikasi_%%i_A.bat"

    echo "dummy database" > "%BASE%\SimulasiDrive_D\Folder_%%i\database_%%i.db"
    echo "config" > "%BASE%\SimulasiDrive_D\Folder_%%i\config_%%i.ini"
)

echo Selesai!
pause