terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

resource "github_user_gpg_key" "this" {
  armored_public_key = var.github_user_gpg_key
}

resource "github_user_ssh_key" "this" {
  title = "Primary"
  key   = var.github_user_ssh_key

  lifecycle {
    ignore_changes = [key]
  }
}
