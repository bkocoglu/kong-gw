#sh/bin/bash

docker run \
  -p 9090:9090 \
  -v /Users/bkocoglu/Documents:/etc/prometheus \
  prom/prometheus
