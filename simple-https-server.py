# taken from http://www.piware.de/2011/01/creating-an-https-server-in-python/
# generate server.xml with the following command:
#    openssl req -new -x509 -keyout server.pem -out server.pem -days 365 -nodes
# run as follows:
#    python simple-https-server.py
# then in your browser, visit:
#    https://localhost:4443

from http.server import HTTPServer, SimpleHTTPRequestHandler
import ssl
import sys, os


httpd = HTTPServer((sys.argv[1], 4443), SimpleHTTPRequestHandler)
httpd.socket = ssl.wrap_socket(httpd.socket, certfile='./server.pem', server_side=True)
print ("WEB SERVER https://"+sys.argv[1]+":4443 START!")
httpd.serve_forever()
