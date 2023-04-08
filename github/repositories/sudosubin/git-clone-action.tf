module "git_clone_action" {
  source      = "../../modules/repository"
  name        = "git-clone-action"
  description = "A action for cloning git repositories"
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
