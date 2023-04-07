resource "vercel_project" "appcenter_download_api" {
  name                       = "appcenter-download-api"
  framework                  = null
  serverless_function_region = "iad1"
}

resource "vercel_project_domain" "appcenter_download_api_vercel_app" {
  project_id = vercel_project.appcenter_download_api.id
  domain     = "appcenter-download-api.vercel.app"
}
