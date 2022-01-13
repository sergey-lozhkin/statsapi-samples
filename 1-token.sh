#!/bin/bash
. ~/.bashrc
. 0-params.sh

$CURL \
    --request POST "${BASE_URL}/configapi/v2/oauth/token" \
    --header "Content-Type: application/x-www-form-urlencoded" \
    --data-urlencode "grant_type=client_credentials" \
    --data-urlencode "scope=${SCOPE}" \
    --data-urlencode "client_id=${CLIENT_ID}" \
    --data-urlencode "client_secret=${CLIENT_SECRET}" \
    > "${TOKEN_FILE}"

exit

cat REQUEST <<EOF
POST /configapi/v2/oauth/token HTTP/1.1
Host: sergey-lozhkin.ssf.bugfocus.com
User-Agent: curl/7.81.0
Accept: */*
Content-Type: application/x-www-form-urlencoded
Content-Length: 146

grant_type=client_credentials&scope=clientweb&client_id=edna.partee&client_secret=xRbptklwSRSBg0kZ71xJJ4flNa2sfeX50uzYKiafl7iru2E3ZRD8B8OAEeAQ2zeb
EOF

cat RESPONSE <<EOF
HTTP/1.1 200 OK
Server: nginx/1.15.12
Date: Thu, 13 Jan 2022 01:21:48 GMT
Content-Type: application/json
Content-Length: 145
Connection: keep-alive

{"access_token":"9668B289379C6832B586A5040B997AE82FBB87CD018103248B9E276E570E91B2","token_type":"Bearer","expires_in":"3264","scope":"clientweb"}
EOF
