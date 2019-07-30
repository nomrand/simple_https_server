cd /d %~dp0
set IP=192.168.21.122
set PYTHON=D:\mydocument\program\anaconda\python.exe

%PYTHON% replace.py qrcode.org.html qrcode.html %IP%
start qrcode.html

%PYTHON% simple-https-server.py %IP%
