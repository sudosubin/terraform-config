module "zsh_pipenv" {
  source      = "../../modules/repository"
  name        = "zsh-pipenv"
  description = "Zsh pipenv plugin for autocompletions"
  topics      = ["zsh", "zsh-plugin", "zsh-plugins", "pipenv"]

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
