module "ec2" {
  source        = "github.com/aKumoSolutions/terraform-session-october//modules/ec2"
  env           = "dev"
  instance_type = "t2.micro"
  ami           = "ami-0c2d06d50ce30b442"
}

// github.com = Main domain (SCM)
// aKumoSolutions = Organization
// terraform-session-october = Repository
// tree = 
// main = Branch
// modules = Directory
// ec2 = Subdirectory