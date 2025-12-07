@echo off
:: Jadikan tanggal aman (ganti / jadi -)
set tanggal=%date:/=-%

:: Lokasi sumber dan tujuan
set sumber=D:\Project1\MyFiles\Tugas_Kuliah
set tujuan=D:\Project3\backup_file\%tanggal%

:: Membuat folder backup
mkdir "%tujuan%"

echo.
echo Membuat folder backup: %tujuan%
echo.

:: Proses penyalinan
echo Menyalin file penting...
xcopy "%sumber%\*" "%tujuan%\Tugas_Kuliah\" /E /I /Y
echo.

:: verifikasi
echo Backup selesai!
echo File tersimpan di
echo "%tujuan%\Tugas_Kuliah"
echo.

echo Daftar file hasil backup
dir "%tujuan%\Tugas_Kuliah"
echo.
pause