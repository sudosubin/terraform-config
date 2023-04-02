terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-fly"
    }
  }

  required_providers {
    fly = {
      source  = "fly-apps/fly"
      version = "~> 0.0.21"
    }
  }

  required_version = ">=1.4.0"
}

provider "fly" {
  fly_api_token = var.fly_provider_token
}
