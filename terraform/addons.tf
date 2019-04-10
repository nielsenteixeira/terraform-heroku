resource "heroku_addon" "develop" {
  app = "${heroku_app.develop.name}"
  plan = "${var.heroku_develop_database}"
}