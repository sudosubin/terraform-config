terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-sentry"
    }
  }

  required_providers {
    sentry = {
      source  = "jianyuan/sentry"
      version = "~> 0.11.2"
    }
  }

  required_version = ">=1.4.0"
}

provider "sentry" {
  token = var.sentry_provider_token
}

module "sentry_projects" {
  source = "./projects"

  organization_id = data.sentry_organization.this.id
  teams = {
    panzee_wakdu_archive = { id = sentry_team.panzee_wakdu_archive.id }
    weeket               = { id = sentry_team.weeket.id }
  }
}
