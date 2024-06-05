#!/bin/bash

set -euxo pipefail

if [ -f "./local/.env" ]; then
  source ./local/.env
  envsubst < ./local/config/prometheus.yaml.dist > ./local/config/prometheus.yaml
fi

if [ -f "./remote/.env" ]; then
  source ./remote/.env
  envsubst < ./remote/config/grafana.ini.dist > ./remote/config/grafana.ini
fi

