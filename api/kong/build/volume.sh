#!/bin/sh

command=" docker volume create kong-volume"

echo 'Creating Kong Volume...'

echo "$command"

eval "$command"

echo 'Created Kong Volume !'