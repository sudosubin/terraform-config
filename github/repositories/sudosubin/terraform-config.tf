module "terraform_config" {
  source      = "../../modules/repository"
  name        = "terraform-config"
  description = "Personal terraform files."
  topics      = ["terraform"]

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
