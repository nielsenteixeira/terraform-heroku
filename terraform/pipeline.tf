resource "heroku_pipeline" "pipeline" {
  name = "${var.heroku_pipeline_name}"
}

## attach develop app

resource "heroku_pipeline_coupling" "develop" {
  app        = "${heroku_app.develop.name}"
  pipeline   = "${heroku_pipeline.pipeline.id}"
  stage      = "development"
}
