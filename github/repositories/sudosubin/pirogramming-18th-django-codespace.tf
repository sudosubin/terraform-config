module "pirogramming_18th_django_codespace" {
  source      = "../../modules/repository"
  name        = "pirogramming-18th-django-codespace"
  description = "피로그래밍 18기 강의 (Django crud)"
  topics      = ["python", "django", "backend", "pirogramming"]

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
