# obtain token
curl --location --request POST 'http://sergey-lozhkin.ssf.bugfocus.com/configapi/v2/oauth/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=edna.partee' \
--data-urlencode 'client_secret=xRbptklwSRSBg0kZ71xJJ4flNa2sfeX50uzYKiafl7iru2E3ZRD8B8OAEeAQ2zeb' \
--data-urlencode 'scope=clientweb' \
--data-urlencode 'grant_type=client_credentials' \
| jq -rM '.access_token' > .access-token
