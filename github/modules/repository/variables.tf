variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = null
}

variable "homepage_url" {
  type    = string
  default = null
}

variable "visibility" {
  type    = string
  default = "public"

  validation {
    condition     = var.visibility == "public" || var.visibility == "private"
    error_message = "The visibility must be one of `public` or `private`."
  }
}

variable "topics" {
  type    = list(string)
  default = []
}

variable "archived" {
  type    = bool
  default = false
}

variable "is_template" {
  type    = bool
  default = false
}

variable "has_issues" {
  type    = bool
  default = true
}

variable "has_discussions" {
  type    = bool
  default = false
}

variable "has_projects" {
  type    = bool
  default = false
}

variable "has_wiki" {
  type    = bool
  default = false
}

variable "has_downloads" {
  type    = bool
  default = false
}

variable "allow_merge_commit" {
  type    = bool
  default = false
}

variable "allow_squash_merge" {
  type    = bool
  default = true
}

variable "allow_rebase_merge" {
  type    = bool
  default = false
}

variable "vulnerability_alerts" {
  type    = bool
  default = false
}

variable "template" {
  type = object({
    owner                = string
    repository           = string
    include_all_branches = bool
  })
  default = null
}
