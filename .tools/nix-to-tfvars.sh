#!/usr/bin/env bash

# ./fly/default.auto.tfvars (variables)
FLY_PROVIDER_TOKEN="$(flyctl auth token)"

# ./fly/default.auto.tfvars
rm -rf ./fly/default.auto.tfvars
{
  echo "fly_provider_token = \"$FLY_PROVIDER_TOKEN\""
} >> ./fly/default.auto.tfvars

# ./github/default.auto.tfvars (variables)
GITHUB_PROVIDER_TOKEN="$(gh auth token -h github.com)"
GITHUB_USER_GPG_KEY="$(gpg --output - --armor --export sudosubin@gmail.com | sed ':a;N;$!ba;s/\n/\\n/g')"
GITHUB_USER_SSH_KEY="$(cat ~/.ssh/id_ed25519.pub)"

# ./github/default.auto.tfvars
rm -rf ./github/default.auto.tfvars
{
  echo "github_provider_token = \"$GITHUB_PROVIDER_TOKEN\""
  echo "github_user_gpg_key = \"$GITHUB_USER_GPG_KEY\""
  echo "github_user_ssh_key = \"$GITHUB_USER_SSH_KEY\""
} >> ./github/default.auto.tfvars

# ./terraform-cloud/default.auto.tfvars (variables)
TFE_PROVIDER_TOKEN="$(hcl2json "$TF_CLI_CONFIG_FILE" | jq -r ".credentials[\"app.terraform.io\"][0].token")"

# ./terraform-cloud/default.auto.tfvars
rm -rf ./terraform-cloud/default.auto.tfvars
{
  echo "tfe_provider_token = \"$TFE_PROVIDER_TOKEN\""
} >> ./terraform-cloud/default.auto.tfvars;
