module "playground_hydrogen" {
  source      = "../../modules/repository"
  name        = "playground-hydrogen"
  description = "Testing Hydrogen with TypeScript"
  topics      = ["typescript", "shopify", "hydrogen"]

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
