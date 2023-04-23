module "boaz-20th-kafka" {
  source      = "../../modules/repository"
  name        = "boaz-20th-kafka"
  description = "BOAZ 20기 Kafka 실습 저장소"
  topics      = ["boaz", "kafka"]

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
