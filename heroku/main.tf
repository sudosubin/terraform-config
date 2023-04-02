terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-heroku"
    }
  }

  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.2.0"
    }
  }

  required_version = ">=1.4.0"
}

provider "heroku" {
  api_key = var.heroku_provider_token
}
