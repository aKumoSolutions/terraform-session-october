terraform {
  backend "s3" {
    bucket         = "aws-session-may2022-remote-backend-kris"
    region         = "us-west-2"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-may2022-state-lock-table"
    workspace_key_prefix = "session-11"
  }
}

// If I switch to dev workspace, my backend will look like /session-11/dev/terraform.tfstate
// If I switch to qa workspace, my backend will look like /session-11/qa/terraform.tfstate