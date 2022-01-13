#!/bin/sh

# ENABLE to SERVICE

curl --location --request POST 'http://localhost:8001/services/google/plugins' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "acl",
    "config": {
        "allow": [
            "manager"
        ],
        "hide_groups_header": true
    }
}'

# ENABLE TO CONSUMER

curl --location --request POST 'http://localhost:8001/consumers/orhan/acls' \
--header 'Content-Type: application/json' \
--data-raw '{
    "group": "manager"
}'

