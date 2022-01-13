#!/bin/sh

# ENABLE to SERVICE

curl --location --request POST 'http://localhost:8001/services/google/plugins' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "basic-auth",
    "config": {
        "hide_credentials": true
    }
}'

# ENABLE to CONSUMER

curl --location --request POST 'http://localhost:8001/consumers/orhan/basic-auth' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "orhan",
    "password": "orhan"
}'