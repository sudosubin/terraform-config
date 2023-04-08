module "playground_gunicorn" {
  source      = "../../modules/repository"
  name        = "playground-gunicorn"
  description = "Testing gunicorn with python django"
  topics      = ["django", "gunicorn"]

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
