module "zsh_github_cli" {
  source      = "../../modules/repository"
  name        = "zsh-github-cli"
  description = "Zsh github cli completion plugin"
  topics      = ["zsh", "zsh-plugin", "zsh-plugins"]

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
