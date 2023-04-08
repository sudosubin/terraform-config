module "playground_clean_architecture" {
  source      = "../../modules/repository"
  name        = "playground-clean-architecture"
  description = "A simple frontend clean architecture structured repository"
  topics      = ["frontend", "clean-architecture"]

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
