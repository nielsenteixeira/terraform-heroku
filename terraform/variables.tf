# variable "sample" {
#     description = "var description"
#     type = "string" # string, map or list
#     default = "default value"
# }

variable "heroku_account_email" {}
variable "heroku_api_key" {}
variable "heroku_pipeline_name" {}
variable "heroku_develop_app" {}
variable "heroku_region" {}
variable "heroku_develop_database" {}
variable "heroku_build_packs" { type = "list" }
variable "heroku_source_url" {}
