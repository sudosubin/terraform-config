module "pass_securid" {
  source      = "../../modules/repository"
  name        = "pass-securid"
  description = "A pass extension for managing RSA SecurIDs"
  topics      = ["password-store", "securid"]

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
