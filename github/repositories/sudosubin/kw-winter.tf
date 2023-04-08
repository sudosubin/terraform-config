module "kw_winter" {
  source      = "../../modules/repository"
  name        = "kw-winter"
  description = "KW 광운대학교 해커톤 겨울 오감 서비스"
  topics      = ["ruby", "jekyll"]

  branches = [
    {
      name    = "master"
      default = true
      protection = {
        require_signed_commits          = true
        required_linear_history         = true
        require_conversation_resolution = true
      }
    }
  ]
}
