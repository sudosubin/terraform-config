data "sentry_organization" "this" {
  slug = "sudosubin"
}

resource "sentry_team" "panzee_wakdu_archive" {
  organization = data.sentry_organization.this.id
  name         = "panzee-wakdu-archive"
}

resource "sentry_team" "weeket" {
  organization = data.sentry_organization.this.id
  name         = "weeket"
}
