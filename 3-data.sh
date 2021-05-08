#!/usr/bin/bash

while true; do
    date
    curl -sS --location --request GET 'http://sergey-lozhkin.ssf.bugfocus.com/statsapi/subscription/data' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer '$(cat .access-token) \
    | jq -c
    sleep 1
done
