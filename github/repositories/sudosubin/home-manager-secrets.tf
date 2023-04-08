module "home_manager_secrets" {
  source      = "../../modules/repository"
  name        = "home-manager-secrets"
  description = "Secrets management for nix home-manager"
  topics      = ["home-manager", "nix", "nixos"]

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
