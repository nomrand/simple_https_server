cd `dirname $0`
### for create pem
#echo -e "\n\n\n\n\n\n\n\n\n" | openssl req -new -x509 -keyout server.pem -out server.pem -days 365 -nodes
#clear
echo "NOW HTTP SERVER GOING TO UP"

IP=`ipconfig getifaddr en0`

python replace.py qrcode.org.html qrcode.html ${IP}
open qrcode.html

python simple-https-server.py ${IP}
