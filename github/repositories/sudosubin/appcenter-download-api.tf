module "appcenter_download_api" {
  source      = "../../modules/repository"
  name        = "appcenter-download-api"
  description = "App center download url api using Vercel edge functions"
  topics      = ["vercel", "serverless"]

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
