module "likelion_7th_wordcount" {
  source      = "../../modules/repository"
  name        = "likelion-7th-wordcount"
  description = "멋쟁이 사자처럼 클래스 라이언 과제 1"
  topics      = ["django", "wordcount", "bootstrap", "likelion"]

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
