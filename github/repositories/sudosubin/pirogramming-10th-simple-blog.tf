module "pirogramming_10th_simple_blog" {
  source      = "../../modules/repository"
  name        = "pirogramming-10th-simple-blog"
  description = "피로그래밍 10기 블로그 프로젝트"
  topics      = ["python", "django", "blog", "pirogramming"]

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
