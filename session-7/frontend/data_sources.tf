data "terraform_remote_state" "db" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend-kris"
    region = "us-west-2"
    key    = "session-7/backend/terraform.tfstate"
  }
}