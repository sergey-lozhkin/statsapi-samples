#!/bin/bash
. ~/.bashrc
. 0-params.sh

if [ ! -r "${TOKEN_FILE}" ]; then
    red No token
    exit 1
fi

ACCESS_TOKEN=$(jq  --raw-output --monochrome-output '.access_token' < "${TOKEN_FILE}")

while true; do
    date
    $CURL \
        --request GET "${BASE_URL}/statsapi/subscription/data" \
        --header 'Content-Type: application/json' \
        --header "Authorization: Bearer ${ACCESS_TOKEN}" \
        | jq -c
    # sleep 0.333
done

exit

cat REQUEST <<EOF
GET /statsapi/subscription/data HTTP/1.1
Host: sergey-lozhkin.ssf.bugfocus.com
User-Agent: curl/7.81.0
Accept: */*
Content-Type: application/json
Authorization: Bearer 9668B289379C6832B586A5040B997AE82FBB87CD018103248B9E276E570E91B2

EOF

cat RESPONSE <<EOF
HTTP/1.1 200 OK
Server: nginx/1.15.12
Date: Thu, 13 Jan 2022 01:36:49 GMT
Content-Type: application/json
Content-Length: 773
Connection: keep-alive
Access-Control-Allow-Methods: GET, POST, DELETE, PUT
Access-Control-Allow-Headers: Accept, Origin, Content-type, Authorization
Access-Control-Allow-Credentials: true
Last-Modified: Thu, 13 Jan 2022 01:36:49 GMT
Expires: Sat, 26 Jul 1997 05:00:00 GMT
Cache-Control: no-store, no-cache, max-age=0, must-revalidate

{
  "1": {
    "agent_grids": [
    {
      "id": "1",
      "values": [
        { "1": "diana.yeh", "3": "Yeh", "4": "Diana", "5": "", "6": "" },
        { "1": "carlos.clapper", "3": "Clapper", "4": "Carlos", "5": "", "6": "" },
        { "1": "edna.partee", "3": "Partee", "4": "Edna", "5": "", "6": "" },
        { "1": "alan.jenks", "3": "Jenks", "4": "Alan", "5": "", "6": "" },
        { "1": "antonio.staten", "3": "Staten", "4": "Antonio", "5": "", "6": "" },
        { "1": "blanca.hesse", "3": "Hesse", "4": "Blanca", "5": "", "6": "" },
        { "1": "clara.heintz", "3": "Heintz", "4": "Clara", "5": "", "6": "" },
        { "1": "dennis.scheffler", "3": "Scheffler", "4": "Dennis", "5": "", "6": "" },
        { "1": "gerald.valentine", "3": "Valentine", "4": "Gerald", "5": "", "6": "" },
        { "1": "jesse.gowan", "3": "Gowan", "4": "Jesse", "5": "", "6": "" },
        { "1": "glenda.gamez", "3": "Gamez", "4": "Glenda", "5": "", "6": "" },
        { "1": "lola.maddox", "3": "Maddox", "4": "Lola", "5": "", "6": "" }
      ]
    } ]
  }
}
EOF
