module "nixos_config" {
  source      = "../../modules/repository"
  name        = "nixos-config"
  description = "Personal nix files, installs some dotfiles and softwares."
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
