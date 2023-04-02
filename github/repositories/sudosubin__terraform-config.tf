module "sudosubin__terraform-config" {
  source    = "../modules/repository"
  providers = { github = github.sudosubin }

  name        = "terraform-config"
  description = "Personal terraform files."
  topics      = ["terraform"]
}
