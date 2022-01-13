#!/bin/sh

# CONFIGURE

curl --location --request POST 'http://localhost:8001/services/asdf/plugins' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "rate-limiting",
    "config": {
        "minute": 5,
        "policy": "local"
    }
}'



