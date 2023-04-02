variable "gitlab_provider_token" {
  type      = string
  sensitive = true
}

variable "gitlab_user_gpg_key" {
  type      = string
  sensitive = true
}

variable "gitlab_user_ssh_key" {
  type      = string
  sensitive = true
}
