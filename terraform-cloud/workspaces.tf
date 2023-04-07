resource "tfe_workspace" "sudosubin_fly" {
  name         = "sudosubin-fly"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/fly"
}

resource "tfe_workspace" "sudosubin_github" {
  name         = "sudosubin-github"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/github"
}

resource "tfe_workspace" "sudosubin_gitlab" {
  name         = "sudosubin-gitlab"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/gitlab"
}

resource "tfe_workspace" "sudosubin_heroku" {
  name         = "sudosubin-heroku"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/heroku"
}

resource "tfe_workspace" "sudosubin_sentry" {
  name         = "sudosubin-sentry"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/sentry"
}

resource "tfe_workspace" "sudosubin_terraform_cloud" {
  name         = "sudosubin-terraform-cloud"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/terraform-cloud"
}

resource "tfe_workspace" "sudosubin_vercel" {
  name         = "sudosubin-vercel"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/vercel"
}
