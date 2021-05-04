# create subscription
curl --location --request POST 'http://sergey-lozhkin.ssf.bugfocus.com/statsapi/subscription' \
--header 'Content-Type: application/json;charset=UTF-8' \
--header 'Accept: application/json, text/plain, */*' \
--cookie 'cookies.curl' \
--data-raw '{
    "1": {
        "agent_grids": [
            {
                "id": "1",
                "columns": [
                    {
                        "id": "1",
                        "stat_name": "in_calls_handled_per_day"
                    },
                    {
                        "id": "2",
                        "stat_name": "team_name"
                    },
                    {
                        "id": "3",
                        "stat_name": "lastname"
                    },
                    {
                        "id": "4",
                        "stat_name": "firstname"
                    },
                    {
                        "id": "5",
                        "stat_name": "acd_state"
                    }
                ],
                "logged_in_agents_only": "false",
                "team_ids": [
                    "D0EDDCF1-EBAD-4B2E-9E15-758C87B0CA38"
                ]
            }
        ]
    }
}'

# --header 'Authorization: Bearer 9583E1C4-5408-4E58-A8DC-996A0E78AB89' \
