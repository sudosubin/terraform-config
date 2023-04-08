module "pirogramming_10th_askdjango" {
  source      = "../../modules/repository"
  name        = "pirogramming-10th-askdjango"
  description = "피로그래밍 10기 AskDjano 저장소"
  topics      = ["python", "django", "askdjango", "pirogramming"]

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
