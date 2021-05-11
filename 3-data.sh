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
    sleep 1
done
