#!/bin/sh

command="docker volume rm kong-volume"

echo 'Removeing Kong Volume...'

echo "$command"

eval "$command"

echo 'Removed Kong Volume !'
