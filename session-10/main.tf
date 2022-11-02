module "ec2" {
  source        = "github.com/aKumoSolutions/terraform-session-october//modules/ec2?ref=v1.0.0"
  env           = "dev"
  instance_type = "t2.micro"
  ami           = "ami-0c2d06d50ce30b442"

}
module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.18.1"
}

// github.com = Main domain (SCM)
// aKumoSolutions = Organization
// terraform-session-october = Repository
// tree = 
// main = Branch
// modules = Directory
// ec2 = Subdirectory

// 1. Hashicorp Packer is a tool to build AMIs = check
// 2. For loop, For Expressions = check
// 3. For each, meta argument like a count = check
// 4. Dynamic Resource Creation = check