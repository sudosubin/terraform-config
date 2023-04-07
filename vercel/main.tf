terraform {
  cloud {
    organization = "sudosubin"

    workspaces {
      name = "sudosubin-vercel"
    }
  }

  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.11.4"
    }
  }

  required_version = ">=1.4.0"
}

provider "vercel" {
  api_token = var.vercel_provider_token
}

module "vercel_projects" {
  source = "./projects"
}
