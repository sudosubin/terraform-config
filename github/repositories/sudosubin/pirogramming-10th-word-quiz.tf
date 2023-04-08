module "pirogramming_10th_word_quiz" {
  source      = "../../modules/repository"
  name        = "pirogramming-10th-word-quiz"
  description = "피로그래밍 10기 단어 퀴즈 프로젝트"
  topics      = ["python", "django", "pirogramming"]

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
