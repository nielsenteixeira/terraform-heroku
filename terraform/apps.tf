resource "heroku_app" "develop" {
  name    = "${var.heroku_develop_app}"
  region  = "${var.heroku_region}"

  config_vars {
      APP_ENV = "develop"
  }
}

resource "heroku_build" "uni7-build" {
  app    = "${heroku_app.develop.id}"

  source = {
    path = "${var.heroku_source_url}"
  }
}

resource "heroku_formation" "uni7-formation" {
  app        = "${heroku_app.develop.id}"
  type       = "web"
  quantity   = 1
  size       = "Standard-1x"
  depends_on = ["heroku_build.uni7-build"]
}
