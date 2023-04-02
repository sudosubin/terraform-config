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

module "github_repositories" {
  source = "./repositories"
  providers = {
    github.sudosubin = github.sudosubin
  }

}

module "github_user" {
  source    = "./user"
  providers = { github = github.sudosubin }

  github_user_gpg_key = var.github_user_gpg_key
  github_user_ssh_key = var.github_user_ssh_key
}
