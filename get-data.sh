#!/usr/bin/bash

while true; do
    date
    curl -sS --location --request GET 'http://sergey-lozhkin.ssf.bugfocus.com/statsapi/subscription/data' \
    --header 'Content-Type: application/json' \
    --cookie 'cookies.curl' \
    | jq -c
    sleep 5
done

    # --header 'Authorization: Bearer 9583E1C4-5408-4E58-A8DC-996A0E78AB89' \
