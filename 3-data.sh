#!/bin/bash
. ~/.bashrc

if [ ! -r .access-token ]; then
    red No token
    exit 1
fi

ACCESS_TOKEN=$(jq  --raw-output --monochrome-output '.access_token' < .access-token)

while true; do
    date
    curl -sS --location --request GET 'http://sergey-lozhkin.ssf.bugfocus.com/statsapi/subscription/data' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer '"$ACCESS_TOKEN" \
    | jq -c
    sleep 1
done
