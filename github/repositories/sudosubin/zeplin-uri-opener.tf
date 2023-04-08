module "zeplin_uri_opener" {
  source      = "../../modules/repository"
  name        = "zeplin-uri-opener"
  description = "Open zeplin app uri in your default browser"
  topics      = ["zeplin"]

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
