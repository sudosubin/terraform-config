module "one_dark_theme" {
  source      = "../../modules/repository"
  name        = "one-dark-theme"
  description = "One dark theme, bring into one"
  visibility  = "private"
  topics      = ["one-dark"]

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
