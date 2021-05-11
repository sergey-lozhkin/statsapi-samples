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
