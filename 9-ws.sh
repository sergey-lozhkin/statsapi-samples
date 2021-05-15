#!/bin/bash
. ~/.bashrc
. 0-params.sh

${CURL} --include --no-buffer \
    "http://sergey-lozhkin:10070/pipe/relay?username=helper&token=relaytoken" \
    --header "Host: sergey-lozhkin:10070" \
    --header "Origin: http://sergey-lozhkin:10070" \
    --header "Connection: Upgrade" \
    --header "Upgrade: websocket" \
    --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" \
    --header "Sec-WebSocket-Version: 13" \

    # --data-urlencode "username=helper2" \
    # --data-urlencode "token=relaytoken2" \

    # --header 'Content-Type: application/json;charset=UTF-8' \
    # --data '{ "raw": { "json": "data" } }'

    # --header "Origin: http://sergey-lozhkin:10070" \
    # /pipe/relay\?username=helper\&token=relaytoken
    # "http://sergey-lozhkin:10070/pipe/relay" \
