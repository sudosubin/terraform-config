resource "sentry_project" "panzee_wakdu_archive_frontend" {
  name         = "panzee-wakdu-archive-frontend"
  organization = var.organization_id
  teams        = [var.teams.panzee_wakdu_archive.id]

  platform = "javascript-nextjs"
  slug     = "panzee-wakdu-archive-frontend"
}

resource "sentry_issue_alert" "panzee_wakdu_archive_frontend_new" {
  name         = "live-new-alert (@pwa/frontend)"
  organization = var.organization_id
  project      = sentry_project.panzee_wakdu_archive_frontend.id

  action_match = "any"
  filter_match = "all"
  frequency    = 5

  conditions = [
    {
      "id" : "sentry.rules.conditions.first_seen_event.FirstSeenEventCondition",
      "name" : "A new issue is created"
    },
    {
      "id" : "sentry.rules.conditions.regression_event.RegressionEventCondition",
      "name" : "The issue changes state from resolved to unresolved"
    },
    {
      "id" : "sentry.rules.conditions.reappeared_event.ReappearedEventCondition",
      "name" : "The issue changes state from ignored to unresolved"
    },
    {
      "interval" : "5m",
      "id" : "sentry.rules.conditions.event_frequency.EventFrequencyCondition",
      "value" : 1,
      "comparisonType" : "count",
      "name" : "The issue is seen more than 1 times in 5m"
    }
  ]

  actions = [
    {
      "id" : "sentry.rules.actions.notify_event.NotifyEventAction",
      "name" : "Send a notification (for all legacy integrations)"
    }
  ]
}
