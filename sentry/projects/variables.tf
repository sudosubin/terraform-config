variable "organization_id" {
  type = string
}

variable "teams" {
  type = object({
    panzee_wakdu_archive = object({ id = string })
    weeket               = object({ id = string })
  })
}
