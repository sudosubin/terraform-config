module "likelion_7th_simple_qr" {
  source      = "../../modules/repository"
  name        = "likelion-7th-simple-qr"
  description = "멋쟁이 사자처럼 클래스 라이언 과제 4"
  topics      = ["django", "qrcode", "qrcode-generator", "likelion"]

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
