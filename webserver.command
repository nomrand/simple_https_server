cd `dirname $0`
IP=`ipconfig getifaddr en0`

python python_script/replace.py tmp/qrcode.org.html tmp/qrcode.html ${IP}
open tmp/qrcode.html

python python_script/simple-https-server.py ${IP}
