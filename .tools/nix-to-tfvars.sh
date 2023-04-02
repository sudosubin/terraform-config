#!/usr/bin/env bash

# variables
TFE_PROVIDER_TOKEN="$(hcl2json "$TF_CLI_CONFIG_FILE" | jq -r ".credentials[\"app.terraform.io\"][0].token")"

# ./terraform-cloud/default.auto.tfvars
rm -rf ./terraform-cloud/default.auto.tfvars
echo "tfe_provider_token = \"$TFE_PROVIDER_TOKEN\"" >> ./terraform-cloud/default.auto.tfvars;
