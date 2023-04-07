resource "vercel_project" "panzee_wakdu_archive" {
  name                       = "panzee-wakdu-archive"
  framework                  = "nextjs"
  serverless_function_region = "iad1"

  git_repository = {
    type              = "github"
    repo              = "sudosubin/panzee-wakdu-archive"
    production_branch = "main"
  }
}

resource "vercel_project_domain" "www_wakduarchive_com" {
  project_id           = vercel_project.panzee_wakdu_archive.id
  domain               = "www.wakduarchive.com"
  redirect             = vercel_project_domain.wakduarchive_com.domain
  redirect_status_code = 308
}

resource "vercel_project_domain" "wakduarchive_com" {
  project_id = vercel_project.panzee_wakdu_archive.id
  domain     = "wakduarchive.com"
}

resource "vercel_project_domain" "panzee_wakdu_archive_vercel_app" {
  project_id = vercel_project.panzee_wakdu_archive.id
  domain     = "panzee-wakdu-archive.vercel.app"
}
