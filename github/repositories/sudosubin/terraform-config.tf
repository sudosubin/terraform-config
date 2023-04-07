module "terraform_config" {
  source      = "../../modules/repository"
  name        = "terraform-config"
  description = "Personal terraform files."
  topics      = ["terraform"]
}
