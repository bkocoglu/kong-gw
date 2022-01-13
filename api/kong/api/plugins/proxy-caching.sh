#!/bin/sh

curl --location --request POST 'http://localhost:8001/plugins' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "proxy-cache",
    "config": {
        "content_type": [
            "application/json; charset=utf-8"
        ],
        "cache_ttl": 30,
        "strategy": "memory"
    }
}'