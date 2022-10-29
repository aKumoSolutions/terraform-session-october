terraform {
  backend "s3" {
    bucket         = "aws-session-may2022-remote-backend-kris"
    region         = "us-west-2"
    key            = "session-9/qa/terraform.tfstate"
    dynamodb_table = "terraform-may2022-state-lock-table" 
  }
}