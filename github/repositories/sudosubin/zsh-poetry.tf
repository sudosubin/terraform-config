module "zsh_poetry" {
  source      = "../../modules/repository"
  name        = "zsh-poetry"
  description = "Zsh poetry plugin to activate PATH and autocompletions"
  topics      = ["zsh", "zsh-plugin", "zsh-plugins", "poetry"]

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
