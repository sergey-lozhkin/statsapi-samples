#!/bin/bash
. ~/.bashrc
. 0-params.sh

if [ ! -r "${TOKEN_FILE}" ]; then
    red No token
    exit 1
fi

ACCESS_TOKEN=$(jq  --raw-output --monochrome-output '.access_token' < "${TOKEN_FILE}")

$CURL \
    --request POST "${BASE_URL}/statsapi/subscription" \
    --header 'Content-Type: application/json;charset=UTF-8' \
    --header 'Accept: application/json, text/plain, */*' \
    --header "Authorization: Bearer ${ACCESS_TOKEN}" \
    --data-raw '{
        "1": { "agent_grids": [ {
            "id": "1",
            "columns": [
                { "id": "1", "stat_name": "login_id"  },
                { "id": "3", "stat_name": "lastname"  },
                { "id": "4", "stat_name": "firstname" },
                { "id": "5", "stat_name": "acd_state" },
                { "id": "6", "stat_name": "reason"    } ],
            "logged_in_agents_only": "false",
            "team_ids": [
                "D0EDDCF1-EBAD-4B2E-9E15-758C87B0CA38",
                "D8FDC0B4-4CE9-41D9-BAA2-563ECD7076EE",
                "E22DD444-DBD8-436C-A21F-BF22B6EEB40C" ]
        } ] }
    }'
