module "nixos_flakes" {
  source      = "../../modules/repository"
  name        = "nixos-flakes"
  description = "Personal nix flake files, for development"
  visibility  = "private"
  topics      = ["nix", "nixos"]

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
