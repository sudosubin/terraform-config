locals {
  typescript_action_template = {
    owner                = split("/", module.typescript_action_template.repository.full_name)[0]
    repository           = module.typescript_action_template.repository.name
    include_all_branches = false
  }
}

module "typescript_action_template" {
  source      = "../../modules/repository"
  name        = "typescript-action-template"
  description = "TypeScript action template"
  topics      = ["action", "template"]

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
