module "ausg_6th_small_chat_awscli" {
  source      = "../../modules/repository"
  name        = "ausg-6th-small-chat-awscli"
  description = "awscli usage tips: AUSG 6th small chat topic"
  topics      = ["ausg", "awscli", "shell"]

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
