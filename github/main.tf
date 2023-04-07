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

module "github_repositories_sudosubin" {
  source    = "./repositories/sudosubin"
  providers = { github = github.sudosubin }
}
