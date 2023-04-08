module "pirogramming_10th_startbootstrap" {
  source      = "../../modules/repository"
  name        = "pirogramming-10th-startbootstrap"
  description = "피로그래밍 10기 부트스트랩 클로닝 프로젝트"
  topics      = ["html", "bootstrap", "pirogramming"]

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
