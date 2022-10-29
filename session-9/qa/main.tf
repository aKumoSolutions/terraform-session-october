// Terraform Module
// 1. Local Module = module is in your file system
// 2. Remote Module = module is in remote system such as SCM, HTTP Url, Terrraform Cloud or Enterprise

module "s3" {
    source = "../../modules/s3"      # Where the child module is
######## Variables #############
    env    = "qa"
    bucket_name = "terraform-module-test-kris"
    bucket_acl = "private"
}