module "playground_javascript_runtime" {
  source      = "../../modules/repository"
  name        = "playground-javascript-runtime"
  description = "Simple JavaScript runtime built with rust, powered by deno_core"
  topics      = ["rust"]

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
