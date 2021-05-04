# obtain token
curl --location --request POST 'http://sergey-lozhkin.ssf.bugfocus.com/statsapi/auth' \
--header 'Content-Type: application/json' \
--cookie-jar 'cookies.curl' \
--data-raw '{
    "tenant_url": "clientweb",
    "username": "edna.partee",
    "password": "password"
}'

# --header 'Authorization: Bearer 9C545245-3B5C-4F9D-A1A4-AA497AA92AD0' \
# {
#   "token" : "6F6DB542-8F98-44B8-BCC0-C7738F5BCACD",
#   "privileges" : [ "PUSH_PULL_GLOBAL_WALLBOARDS", "CUSTOMIZE_WALLBOARDS", "SYS_USE_AGENT_SEAT_MAPS" ],
#   "user_id" : "F6CBFBA9-2824-4B20-B9B1-BF4B5D520EF4"
# }
