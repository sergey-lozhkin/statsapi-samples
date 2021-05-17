#!/bin/bash
. ~/.bashrc
. 0-params.sh

${CURL} --include --no-buffer \
    "http://sergey-lozhkin:10070/pipe/relay?username=helper&token=relaytoken" \
    --header "Host: sergey-lozhkin:10070" \
    --header "Origin: http://sergey-lozhkin:10070" \
    --header "Connection: Upgrade" \
    --header "Upgrade: websocket" \
    --header "Sec-WebSocket-Key: QKXwwg830iF9oZT46q4zKQ==" \
    --header "Sec-WebSocket-Version: 13" \

exit 0

    --header "Sec-WebSocket-Extensions: permessage-deflate; client_max_window_bits" \
    --header 'Content-Type: application/json;charset=UTF-8' \
    --data '{ "raw": { "json": "data" } }'
    --data-urlencode "username=helper" \
    --data-urlencode "token=relaytoken" \

    --header "Origin: http://sergey-lozhkin:10070" \
    /pipe/relay\?username=helper\&token=relaytoken
    "http://sergey-lozhkin:10070/pipe/relay" \

    "http://sergey-lozhkin:10070/pipe/relay" \

    --user-agent "" \
