#!/bin/sh

database="docker rm -f kong-database"

echo 'Removeing Kong Database Container...'

echo "$database"

eval "$database"

echo 'Removed Kong Database Container !'
