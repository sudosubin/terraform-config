#!/usr/bin/env bash

INPUT="$1"

for ENV_NAME in $(jq -r ".[] | .name" <<< "$INPUT"); do
  export "$ENV_NAME"="$(eval echo "$(jq -r ".[] | select(.name == \"$ENV_NAME\") | .value" <<< "$INPUT")")"
done
