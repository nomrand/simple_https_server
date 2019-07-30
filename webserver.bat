cd /d %~dp0
set IP=192.168.21.122
set PYTHON=D:\mydocument\program\anaconda\python.exe

%PYTHON% python_script\replace.py tmp\qrcode.org.html tmp\qrcode.html %IP%
start tmp\qrcode.html

%PYTHON% python_script\simple-https-server.py %IP%
