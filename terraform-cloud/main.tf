terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-terraform-cloud"
    }
  }

  required_providers {
    tfe = {
      version = "~> 0.43.0"
    }
  }

  required_version = ">=1.4.0"
}

provider "tfe" {}
