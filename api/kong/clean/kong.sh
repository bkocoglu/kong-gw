#!/bin/sh

command="docker rm -f kong-container"

echo 'Removeing Kong Container...'

echo "$command"

eval "$command"

echo 'Removed Kong Container !'
