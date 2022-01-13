#!/bin/sh

command="docker run -d --name kong-database \
  --network=kong-network \
  -p 5432:5432 \
  -e 'POSTGRES_USER=kong' \
  -e 'POSTGRES_DB=kong' \
  -e 'POSTGRES_PASSWORD=kong' \
  postgres:9.6"

echo 'Creating Kong Database...'

echo "$command"

eval "$command"

echo 'Created Kong Database !'