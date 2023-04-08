module "homebrew_pass_securid" {
  source      = "../../modules/repository"
  name        = "homebrew-pass-securid"
  description = "pass-securid homebrew tap repository"
  topics      = ["homebrew", "password-store", "securid"]

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
