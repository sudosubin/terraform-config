module "subsmanager" {
  source      = "../../modules/repository"
  name        = "subsmanager"
  description = "신촌톤 2019 구독 서비스 관리 서비스, Subsmanager"
  topics      = ["django", "likelion"]

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
