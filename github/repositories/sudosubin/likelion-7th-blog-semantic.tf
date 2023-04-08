module "likelion_7th_blog_semantic" {
  source      = "../../modules/repository"
  name        = "likelion-7th-blog-semantic"
  description = "멋쟁이 사자처럼 클래스 라이언 과제 2"
  topics      = ["django", "blog", "semantic-ui", "likelion"]

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
