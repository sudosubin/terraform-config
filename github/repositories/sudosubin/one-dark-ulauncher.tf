module "one_dark_ulauncher" {
  source      = "../../modules/repository"
  name        = "one-dark-ulauncher"
  description = "One Dark theme for Ulauncher"
  topics      = ["ulauncher", "one-dark"]

  branches = [
    {
      name    = "master"
      default = true
      protection = {
        require_signed_commits          = true
        required_linear_history         = true
        require_conversation_resolution = true
      }
    }
  ]
}
