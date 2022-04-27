#!/bin/bash
. ~/.bashrc
. 0-params.sh

if [ ! -r "${TOKEN_FILE}" ]; then
    red No token
    exit 1
fi

ACCESS_TOKEN=$(jq  --raw-output --monochrome-output '.access_token' < "${TOKEN_FILE}")

$CURL \
    --request GET "${BASE_URL}/statsapi/cfg/services" \
    --header 'Content-Type: application/json' \
    --header "Authorization: Bearer ${ACCESS_TOKEN}" \

exit

cat REQUEST <<EOF
GET /statsapi/cfg/services HTTP/1.1
Host: sergey-lozhkin.ssf.bugfocus.com
User-Agent: curl/7.64.1
Accept: */*
Content-Type: application/json
Authorization: Bearer 4F3B9D2D4977BB0C4C139F603ADCA580FB2C99B25575973010853DBB612AF3F9

EOF

cat RESPONSE <<EOF
HTTP/1.1 200 OK
Server: nginx/1.15.12
Date: Wed, 27 Apr 2022 17:27:23 GMT
Content-Type: application/json
Content-Length: 544
Connection: keep-alive
Access-Control-Allow-Methods: GET, POST, DELETE, PUT
Access-Control-Allow-Headers: Accept, Origin, Content-type, Authorization
Access-Control-Allow-Credentials: true
Last-Modified: Wed, 27 Apr 2022 05:27:23 GMT
Expires: Sat, 26 Jul 1997 05:00:00 GMT
Cache-Control: no-store, no-cache, max-age=0, must-revalidate

[ {
  "id" : "08860E6C-3E64-426C-8C73-7BA9FB4471CE",
  "name" : "Callback"
}, {
  "id" : "50AD2CA2-C222-4539-A880-4EA5E17A11F5",
  "name" : "Simply"
}, {
  "id" : "7CB4687A-55EE-4722-AB32-EA5DC1B18FED",
  "name" : "EMail"
}, {
  "id" : "E1086D3D-CA09-4703-A96F-3473E9ED57B0",
  "name" : "Outbound"
}, {
  "id" : "C13F2186-43FE-404D-B7DC-022010B9767C",
  "name" : "Chat"
}, {
  "id" : "0D56D2D7-F95E-4020-9AFF-390FD91A9664",
  "name" : "Maintenance Service"
}, {
  "id" : "E9BF1F22-3344-4E0D-A90E-9D92729F345C",
  "name" : "Customer Service"
} ]
EOF
