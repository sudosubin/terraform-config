module "toss_ipd_server_assignment" {
  source      = "../../modules/repository"
  name        = "toss-ipd-server-assignment"
  description = "Toss 사전 과제 (Internal Product)"
  visibility  = "private"
  topics      = ["python", "django", "backend"]

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
