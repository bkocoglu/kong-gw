#!/bin/sh

# CREATE

curl --location --request POST 'http://localhost:8001/services/example-service/routes' \
--header 'Content-Type: application/json' \
--data-raw '{
    "hosts": [
        "example.com"
    ]
    "PATH":"/"
}'

