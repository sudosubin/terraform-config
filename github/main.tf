terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-github"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.18.3"
    }
  }

  required_version = ">=1.4.0"
}

provider "github" {
  token    = var.github_provider_token
}

module "github_user" {
  source = "./user"

  github_user_gpg_key = var.github_user_gpg_key
  github_user_ssh_key = var.github_user_ssh_key
}
