resource "fly_app" "panzee_wakdu_archive_backend" {
  org  = "personal"
  name = "panzee-wakdu-archive-backend"
}

resource "fly_cert" "api_wakduarchive_com" {
  app      = fly_app.panzee_wakdu_archive_backend.name
  hostname = "api.wakduarchive.com"
}

resource "fly_ip" "panzee_wakdu_archive_backend_ipv4" {
  app  = fly_app.panzee_wakdu_archive_backend.name
  type = "v4"
}

resource "fly_ip" "panzee_wakdu_archive_backend_ipv6" {
  app  = fly_app.panzee_wakdu_archive_backend.name
  type = "v6"
}
