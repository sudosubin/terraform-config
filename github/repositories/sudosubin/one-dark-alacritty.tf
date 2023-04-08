module "one_dark_alacritty" {
  source      = "../../modules/repository"
  name        = "one-dark-alacritty"
  description = "One Dark theme for Alacritty"
  topics      = ["alacritty", "one-dark"]

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
