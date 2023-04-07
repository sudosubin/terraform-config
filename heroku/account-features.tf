locals {
  heroku_account_features = {
    app-overview            = true
    dashboard-pb-websockets = true
    mfa-required            = true
  }
}

resource "heroku_account_feature" "this" {
  for_each = local.heroku_account_features

  name    = each.key
  enabled = each.value
}
