data "gitlab_user" "this" {
  username = "sudosubin"
}

resource "gitlab_user_gpgkey" "this" {
  key = var.gitlab_user_gpg_key
}

resource "gitlab_user_sshkey" "this" {
  user_id = data.gitlab_user.this.id
  title   = "Primary"
  key     = var.gitlab_user_ssh_key

  lifecycle {
    ignore_changes = [key]
  }
}
