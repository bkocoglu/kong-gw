#!/bin/sh

command="docker run --rm \
  --network=kong-network \
  -e 'KONG_DATABASE=postgres' \
  -e 'KONG_PG_HOST=kong-database' \
  -e 'KONG_PG_USER=kong' \
  -e 'KONG_PG_PASSWORD=kong' \
  -e 'KONG_CASSANDRA_CONTACT_POINTS=kong-database' \
  kong:latest kong migrations bootstrap"

echo 'Starting Kong Migration...'

echo "$command"

eval "$command"

echo 'Completed Kong Migration !'