resource "github_branch" "this" {
  for_each   = { for branch in var.branches : branch.name => branch }
  repository = github_repository.this.name
  branch     = each.key
}

resource "github_branch_default" "this" {
  for_each   = { for branch in var.branches : branch.name => branch if lookup(branch, "default") }
  repository = github_repository.this.name
  branch     = each.value.name

  depends_on = [
    github_branch.this
  ]
}

resource "github_branch_protection" "this" {
  for_each                        = { for branch in var.branches : branch.name => branch if lookup(branch, "protection") != null }
  repository_id                   = github_repository.this.node_id
  pattern                         = each.value.name
  require_signed_commits          = each.value.protection.require_signed_commits
  required_linear_history         = each.value.protection.required_linear_history
  require_conversation_resolution = each.value.protection.require_conversation_resolution
  allows_deletions                = false

  depends_on = [
    github_branch.this
  ]
}
