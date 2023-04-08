module "bins" {
  source      = "../../modules/repository"
  name        = "bins"
  description = "Personal binary package manager, installs some useful softwares"
  topics      = ["python", "package-manager"]
  archived    = true
}
