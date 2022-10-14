resource "aws_instance" "web_instance" {
  ami = "ami-08e2d37b6a0129927"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}




// resource = block
// aws_instance = first label = resource type = predefined by Terraform
// first_ec2  = second label  = logical name or ID (Name for the Resource) = defined by Author 
// argument = consists of key/value, name/value = Configurations and components of your resource
//  - key = predefined by Terraform
//  - value = defined by Author

# Each Terraform Configuration file has an extension called ".tf"

# Terraform has 2 types of Blocks
// 1. Resource    = Create and Manage Resources, Services, Infrastructures
// 2. Data Source = 

// Each block expect 2 labels, Resource expects 2 labels


// terraform.tfstate  (desired state of your Infrastructure)

// In Terraform, this file is called "Backend file"
// There are 2 types of backend
// 1. Local Backend = is in within the Working Directory
// 2. Remote Backend = is in the Remote Storage such as S3 bucket, etc


