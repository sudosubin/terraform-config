resource "github_user_gpg_key" "this" {
  provider = github.sudosubin

  armored_public_key = var.github_user_gpg_key
}

resource "github_user_ssh_key" "this" {
  provider = github.sudosubin

  title = "Primary"
  key   = var.github_user_ssh_key

  lifecycle {
    ignore_changes = [key]
  }
}
