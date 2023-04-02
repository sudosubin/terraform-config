module "sudosubin__nixos-config" {
  source    = "../modules/repository"
  providers = { github = github.sudosubin }

  name        = "nixos-config"
  description = "Personal nix files, installs some dotfiles and softwares."
  topics      = ["dotfiles", "nix", "nixos"]
}
