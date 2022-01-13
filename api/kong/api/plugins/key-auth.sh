#!/bin/sh

# ENABLE

curl --location --request POST 'http://localhost:8001/services/example-service/plugins/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "key-auth"
}'

# ADD KEY IN CONSUMER

curl --location --request POST 'http://localhost:8001/consumers/jforce/key-auth/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "key": "jforce123"
}'

