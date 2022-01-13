#!/bin/sh

# ROUTE TEST

curl -i -X GET \
  --url http://localhost:8000/ \
  --header 'Host: example.com'