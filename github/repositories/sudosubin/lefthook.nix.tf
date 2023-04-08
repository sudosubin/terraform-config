module "lefthook_nix" {
  source      = "../../modules/repository"
  name        = "lefthook.nix"
  description = "Using lefthook with Nix"
  topics      = ["nix", "lefthook"]

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
