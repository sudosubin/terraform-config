module "nixos_config_private" {
  source      = "../../modules/repository"
  name        = "nixos-config-private"
  description = "Personal nix files, for private usage"
  visibility  = "private"
  topics      = ["dotfiles", "nix", "nixos"]

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
