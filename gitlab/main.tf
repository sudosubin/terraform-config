terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-gitlab"
    }
  }

  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 15.10.0"
    }
  }

  required_version = ">=1.4.0"
}

provider "gitlab" {
  token = var.gitlab_provider_token
}
