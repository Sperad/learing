#!/bin/sh

rm -f client.*

echo -e "\n\ncreate client.......\n\n"
#client.key
openssl genrsa -out client.key 1024
#client.csr
openssl req -new -key client.key -out client.csr

openssl x509 -req -days 365 -CA ca.crt -CAkey ca.key -CAcreateserial  -in client.csr -out client.crt
echo -e "\n\nend of client.......\n\n"


echo -e "\n\n Export .p12 file.......\n\n"

openssl pkcs12 -export -clcerts -in client.crt -inkey client.key -out client.p12
echo -e "\n\n Export .p12 file end.......\n\n"
