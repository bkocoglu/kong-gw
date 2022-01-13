#!/bin/sh

# CREATE
curl --location --request POST 'http://localhost:8001/services' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "example-service",
    "url": "http://mockbin.org"
}'

# LIST

curl --location --request GET 'http://localhost:8001/services'

# DELETE

curl --location --request DELETE 'http://localhost:8001/services/44efdf57-2d61-4110-9757-fb351715f058'

# UPDATE

curl --location --request PATCH 'http://localhost:8001/services/example-service' \
--header 'Content-Type: application/json' \
--data-raw '{
    "host":"upstream"
}'

