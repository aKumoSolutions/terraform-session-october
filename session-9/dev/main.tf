// Terraform Module
// 1. Local Module = module is in your file system
// 2. Remote Module = module is in remote system such as SCM, HTTP Url, Terrraform Cloud or Enterprise

module "s3" {
    source = "../../modules/s3"      # Where the child module is
######## Variables #############
    env    = "dev"
    bucket_name = "terraform-module-test-kris"
    bucket_acl = "private"
}
module "ec2" {
    source  = "../../modules/ec2"
    env    = "dev"
    instance_type = "t2.micro"
    ami = "ami-0c2d06d50ce30b442"
// Reference to Child Module Outputs = module.module_name.output_name
    s3_bucket_name = module.s3.s3_bucket_name
}


// How to reference from a CHILD Module to another CHILD Module?
// 1. You need to reference to Child Module Outputs