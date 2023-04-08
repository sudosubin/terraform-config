module "panzee_wakdu_archive" {
  source      = "../../modules/repository"
  name        = "panzee-wakdu-archive"
  description = "Panzee Wakdu Archive service repository"
  visibility  = "private"
  topics      = []

  branches = [
    {
      name    = "main"
      default = true
      protection = {
        require_signed_commits          = false
        required_linear_history         = true
        require_conversation_resolution = true
        required_pull_request_reviews = {
          required_approving_review_count = 1
        }
      }
    }
  ]
}
