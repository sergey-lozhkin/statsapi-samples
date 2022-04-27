#!/bin/bash
. ~/.bashrc
. 0-params.sh

if [ ! -r "${TOKEN_FILE}" ]; then
    red No token
    exit 1
fi

ACCESS_TOKEN=$(jq  --raw-output --monochrome-output '.access_token' < "${TOKEN_FILE}")

$CURL \
    --request GET "${BASE_URL}/statsapi/cfg/agents" \
    --header 'Content-Type: application/json' \
    --header "Authorization: Bearer ${ACCESS_TOKEN}" \

exit

cat REQUEST <<EOF
GET /statsapi/cfg/agents HTTP/1.1
Host: sergey-lozhkin.ssf.bugfocus.com
User-Agent: curl/7.64.1
Accept: */*
Content-Type: application/json
Authorization: Bearer 4F3B9D2D4977BB0C4C139F603ADCA580FB2C99B25575973010853DBB612AF3F9

EOF

cat RESPONSE <<EOF
HTTP/1.1 200 OK
Server: nginx/1.15.12
Date: Wed, 27 Apr 2022 17:23:21 GMT
Content-Type: application/json
Content-Length: 1039
Connection: keep-alive
Access-Control-Allow-Methods: GET, POST, DELETE, PUT
Access-Control-Allow-Headers: Accept, Origin, Content-type, Authorization
Access-Control-Allow-Credentials: true
Last-Modified: Wed, 27 Apr 2022 05:23:21 GMT
Expires: Sat, 26 Jul 1997 05:00:00 GMT
Cache-Control: no-store, no-cache, max-age=0, must-revalidate

[ {
  "id" : "D6541CE7-30F3-4A12-B955-BA968D8364C9",
  "name" : "diana.yeh"
}, {
  "id" : "B2A1B9DA-5C15-474B-BB0B-2DEFF5974A0E",
  "name" : "blanca.hesse"
}, {
  "id" : "CFEA7644-E58D-4166-BC63-BA24278452C0",
  "name" : "antonio.staten"
}, {
  "id" : "F0D6F864-5574-4802-80DD-1F6D63D8438E",
  "name" : "jesse.gowan"
}, {
  "id" : "27B73000-B03A-4FD7-9F75-CCB66679780D",
  "name" : "gerald.valentine"
}, {
  "id" : "D87C5F51-E765-4F2F-AB6C-B17E577376DB",
  "name" : "alan.jenks"
}, {
  "id" : "5EA94F7C-3475-497E-B08A-B155AE0D8C43",
  "name" : "lola.maddox"
}, {
  "id" : "F6CBFBA9-2824-4B20-B9B1-BF4B5D520EF4",
  "name" : "edna.partee"
}, {
  "id" : "8E07861E-409A-4E52-BB5B-2F28DAAF5A6E",
  "name" : "carlos.clapper"
}, {
  "id" : "E28D1A5F-0301-49DD-8BBA-8F02689B14F5",
  "name" : "admin"
}, {
  "id" : "E896C2D1-6E0A-4991-94B6-02A100BF84B4",
  "name" : "dennis.scheffler"
}, {
  "id" : "32147BB4-4BFF-4BEE-842E-5B666FCEBAF8",
  "name" : "clara.heintz"
}, {
  "id" : "1544C47A-DF20-473B-A6E1-FD23D58C966E",
  "name" : "glenda.gamez"
} ]
EOF
