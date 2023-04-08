module "homebrew_check_jsonschema" {
  source      = "../../modules/repository"
  name        = "homebrew-check-jsonschema"
  description = "check-jsonschema homebrew tap repository"
  topics      = ["homebrew", "jsonschema", "json-schema"]

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
