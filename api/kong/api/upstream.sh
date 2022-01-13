#!/bin/sh

# DEFINITION
curl --location --request POST 'http://localhost:8001/upstreams' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "upstream"
}'

# TARGETS

curl --location --request POST 'http://localhost:8001/upstreams/upstream/targets' \
--header 'Content-Type: application/json' \
--data-raw '{
    "target":"httpbin.org:80"
}'

curl --location --request POST 'http://localhost:8001/upstreams/upstream/targets' \
--header 'Content-Type: application/json' \
--data-raw '{
    "target":"mockbin.org:80"
}'

