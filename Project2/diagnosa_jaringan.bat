@echo off
echo IPCONFIG /ALL >> hasil_diagnosa.txt
ipconfig /all >> hasil_diagnosa.txt

echo TEST PING INTTERNET >> hasil_diagnosa.txt
ping 8.8.8.8 >> hasil_diagnosa.txt

echo TEST PING WEBSITE >> hasil_diagnosa.txt
ping google.com >> hasil_diagnosa.txt

echo TRACE ROUTE >> hasil_diagnosa.txt
tracert google.com >> hasil_diagnosa.txt

echo NETSTAT -AN >> hasil_diagnosa.txt
netstat -an >> hasil_diagnosa.txt

echo.
echo Hasil Diagnosa Selesai! Hasil di simpan dalam hasil_diagnosa.txt
echo.
pause