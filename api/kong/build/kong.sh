#!/bin/sh

command="docker run -d --name kong-container \
     --network=kong-network \
     -v 'kong-volume:/usr/local/kong/declarative' \
     -e 'KONG_DATABASE=postgres' \
     -e 'KONG_PG_HOST=kong-database' \
     -e 'KONG_PG_USER=kong' \
     -e 'KONG_PG_PASSWORD=kong' \
     -e 'KONG_CASSANDRA_CONTACT_POINTS=kong-database' \
     -e 'KONG_PROXY_ACCESS_LOG=/dev/stdout' \
     -e 'KONG_ADMIN_ACCESS_LOG=/dev/stdout' \
     -e 'KONG_PROXY_ERROR_LOG=/dev/stderr' \
     -e 'KONG_ADMIN_ERROR_LOG=/dev/stderr' \
     -e 'KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl' \
     -e 'KONG_ADMIN_GUI_URL=http://127.0.0.1:8002' \
     -p 8000:8000 \
     -p 8002:8002 \
     -p 8443:8443 \
     -p 127.0.0.1:8001:8001 \
     -p 127.0.0.1:8444:8444 \
     kong:2.7.0"

echo 'Creating Kong...'

echo "$command"

eval "$command"

echo 'Created Kong !'