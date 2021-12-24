@echo off
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user Administrator @Alphanum404 /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo Berhasil Menginstall!, Jika RDPnya Mati Silahkan Rebuild Lagi!
run:./ngrok authtoken 21u1OHyPVkDyFu3zP026MyBou9C_348Q4GEXNCCgbEnnnNHPq
run:./ngrok http 80
echoIP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Tidak bisa mendapatkan NGROK tunnel, pastikan NGROK_AUTH_TOKEN benar di Settings> Secrets> Repository secret. Mungkin VM Anda sebelumnya masih berjalan: https://dashboard.ngrok.com/status/tunnels "
echo Username: Administrator
echo Password: @Alphanum404
echo Silahkan Login Ke RDP Anda!!
ping -n 10 127.0.0.1 >nul
