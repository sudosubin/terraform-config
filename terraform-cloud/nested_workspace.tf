resource "tfe_workspace" "sudosubin-github" {
  name         = "sudosubin-github"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/github"
}

resource "tfe_workspace" "sudosubin-terraform-cloud" {
  name         = "sudosubin-terraform-cloud"
  organization = data.tfe_organization.this.name
  description  = "Terraform workspace for sudosubin/terraform-config/terraform-cloud"
}
