module "triple" {
  source      = "../../modules/repository"
  name        = "triple"
  description = "피로그래밍 여행 웹 앱, Triple"
  topics      = ["django", "sns", "pirogramming"]

  branches = [
    {
      name    = "Jun"
      default = true
      protection = {
        require_signed_commits          = true
        required_linear_history         = true
        require_conversation_resolution = true
      }
    }
  ]
}
