module "weeket" {
  source      = "../../modules/repository"
  name        = "weeket"
  description = "Weeket service repository"
  visibility  = "private"
  topics      = []

  branches = [
    {
      name    = "main"
      default = true
      protection = {
        require_signed_commits          = true
        required_linear_history         = true
        require_conversation_resolution = true
        required_pull_request_reviews = {
          required_approving_review_count = 1
        }
      }
    }
  ]
}
