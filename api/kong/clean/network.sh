#!/bin/sh

network="docker network remove kong-network"

echo 'Removeing Kong Network...'

echo "$network"

eval "$network"

echo 'Removed Kong Network !'
