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
