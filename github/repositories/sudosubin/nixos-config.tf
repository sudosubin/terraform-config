module "nixos_config" {
  source      = "../../modules/repository"
  name        = "nixos-config"
  description = "Personal nix files, installs some dotfiles and softwares."
  topics      = ["dotfiles", "nix", "nixos"]
}
