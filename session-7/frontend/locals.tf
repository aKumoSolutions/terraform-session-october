// Local is used for something that's repeated over and over again.
// Warning: Do not overuse Locals

// 1. Naming Standard
// 2. Tagging Standard / Common Tags

// Naming Standard

// aws-uw2-nonprod-dev-cat-${resource_type}

// aws = cloud provider
// uw2 = us-west-2 region
// nonprod = account
// dev = environment 
// cat = project 
// ${resource_name} = asg, alb, route53, rds, etc

// Tagging Standard / Common Tags

//     common_tags
// env = ""
// project = ""
// team = ""
// owner = ""
// managed_by = ""

// aws-uw2-nonprod-dev-cat-${resource_type}

locals {
  name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"
  common_tags = {
    env        = var.env
    project    = var.project
    team       = "DevOps"
    owner      = "Kris"
    managed_by = "Terraform"
    budget = "$100"
  }
}


