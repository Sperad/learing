#!/bin/sh

rm -f ca.*
rm -f server.*
rm -rf demoCA/

mkdir demoCA
mkdir demoCA/newcerts
mkdir demoCA/private
touch demoCA/index.txt
echo "01" >> demoCA/serial

echo -e "create CA.......\n\n"
#ca.key
openssl genrsa -out ca.key 1024
#ca.crt
openssl req -new -x509 -days 365 -key ca.key -out ca.crt 
echo -e "end of CA.......\n\n"
