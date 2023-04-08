module "pragmatapro" {
  source      = "../../modules/repository"
  name        = "pragmatapro"
  description = "PragmataPro font face"
  visibility  = "private"
  topics      = ["font", "pragmatapro"]

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
