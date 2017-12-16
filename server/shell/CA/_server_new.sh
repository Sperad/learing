#!/bin/sh

echo -e "\n\ncreate Server.......\n\n"
#server.key
openssl genrsa -out server.key 1024 
#server.csr
openssl req -new -out server.csr -key server.key
#server.crt
openssl ca -in server.csr -out server.crt -cert ca.crt -keyfile ca.key
echo -e "\n\nend of Server.......\n\n"
