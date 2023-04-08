module "setup_lokalise_action" {
  source      = "../../modules/repository"
  name        = "setup-lokalise-action"
  description = "A setup action for lokalise cli v2"
  topics      = ["action", "lokalise"]

  template = {
    owner                = "sudosubin"
    repository           = "typescript-action-template"
    include_all_branches = false
  }

  branches = [
    {
      name    = "main"
      default = true
      protection = {
        require_signed_commits          = true
        required_linear_history         = true
        require_conversation_resolution = true
      }
    }
  ]
}
