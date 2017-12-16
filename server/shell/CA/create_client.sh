#!/usr/bin/expect

spawn ./_client_new.sh
#client.csr
expect {
    "Country Name*" { send "cn\r"; exp_continue}
    "State or Province Name*" { send "zj\r"; exp_continue}
    "Locality Name*" { send "hz\r"; exp_continue}
    "Organization Name*" { send "hx\r"; exp_continue}
    "Organizational Unit Name*" { send "jj\r"; exp_continue}
    "Common Name*" { send "sperad\r"; exp_continue}
    "Email Address*" { send "sperad@qq.com\r"; exp_continue}
    "A challenge password*" { send "\r"; exp_continue}
    "An optional company name*" { send "\r"; exp_continue }
}

#export password
expect {
    "Enter Export Password*" { send "123456\r"; exp_continue }
    "Verifying*" { send "123456\r"; exp_continue }
}
