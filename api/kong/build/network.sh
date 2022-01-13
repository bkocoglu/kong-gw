#!/bin/sh

command="docker network create kong-network"

echo 'Creating Kong Network...'

echo "$command"

eval "$command"

output=$(eval "$x")

echo "$output"

echo 'Created Kong Network !'