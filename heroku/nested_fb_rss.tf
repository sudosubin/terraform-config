resource "heroku_app" "fb-rss" {
  name   = "fb-rss"
  stack  = "heroku-22"
  region = "us"

  buildpacks = [
    "heroku/python",
  ]
}
