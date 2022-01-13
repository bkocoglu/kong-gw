#!/bin/sh

# CREATE

# Kong also accepts a custom_id parameter when creating consumers to associate a consumer with your existing user database.
curl --location --request POST 'http://localhost:8001/consumers/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "jforce"
}'

# LIST

curl --location --request GET 'http://localhost:8001/consumers/'

