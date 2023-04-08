module "release_helper_action" {
  source      = "../../modules/repository"
  name        = "release-helper-action"
  description = "A helper action for releasing actions without hassles"
  topics      = ["action"]
  template    = local.typescript_action_template

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
