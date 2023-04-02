resource "fly_app" "panzee-wakdu-archive-backend" {
  org  = "personal"
  name = "panzee-wakdu-archive-backend"
}

resource "fly_cert" "api_wakduarchive_com" {
  app      = fly_app.panzee-wakdu-archive-backend.name
  hostname = "api.wakduarchive.com"
}

resource "fly_ip" "panzee-wakdu-archive-backend-ipv4" {
  app  = fly_app.panzee-wakdu-archive-backend.name
  type = "v4"
}

resource "fly_ip" "panzee-wakdu-archive-backend-ipv6" {
  app  = fly_app.panzee-wakdu-archive-backend.name
  type = "v6"
}
