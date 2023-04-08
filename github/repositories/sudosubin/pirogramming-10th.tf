module "pirogramming_10th" {
  source      = "../../modules/repository"
  name        = "pirogramming-10th"
  description = "피로그래밍 10기 과제 제출 저장소"
  topics      = ["python", "html", "pirogramming"]

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
