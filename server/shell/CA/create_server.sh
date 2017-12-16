#!/usr/bin/expect

spawn ./_ca_new.sh
#ca.crt
expect {
    "Country Name*" { send "cn\r"; exp_continue}
    "State or Province Name*" { send "zj\r"; exp_continue}
    "Locality Name*" { send "hz\r"; exp_continue}
    "Organization Name*" { send "hx\r"; exp_continue}
    "Organizational Unit Name*" { send "jj\r"; exp_continue}
    "Common Name*" { send "ca/\r"; exp_continue}
    "Email Address*" { send "ca@myhexin.com\r"; exp_continue}
}
spawn ./_server_new.sh
#server.csr
expect {
    "Country Name*" { send "cn\r"; exp_continue}
    "State or Province Name*" { send "zj\r"; exp_continue}
    "Locality Name*" { send "hz\r"; exp_continue}
    "Organization Name*" { send "hx\r"; exp_continue}
    "Organizational Unit Name*" { send "jj\r"; exp_continue}
    "Common Name*" { send "172.20.202.100:5445\r"; exp_continue}
    "Email Address*" { send "fundsale@myhexin.com\r"; exp_continue}
    "A challenge password*" { send "\r"; exp_continue}
    "An optional company name*" { send "\r"; exp_continue }
}
#server.crt
expect {
    "Sign the certificate*" { send "y\r"; exp_continue}
    "1 out of 1 certificate requests certified, commit*" { send "y\r"; exp_continue}
}
