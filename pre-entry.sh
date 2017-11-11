#!/bin/bash
# don't use /bin/sh, as it'll break influxdb's own entry script

set -e

vars="INFLUXDB_ADMIN_PASSWORD INFLUXDB_USER_PASSWORD INFLUXDB_READ_USER_PASSWORD INFLUXDB_WRITE_USER_PASSWORD"

for var in $vars; do
  eval val="\$$var"
  eval val_file="\$${var}_FILE"
  if [ -z "$val" -a -n "$val_file" ]; then
    export "$var"=$(cat "$val_file")
  fi
done

. /entrypoint.sh
