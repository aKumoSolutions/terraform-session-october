variable "ami" {
    type = string
    description = "Amazon Machine Image"
    default = "ami-0c2d06d50ce30b442"
}
variable "instance_type" {
    type = string
    description = "Size of EC2"
    default = "t2.micro"
}
variable "env" {
    type = string
    description = "Environment Variable"
    default = "dev"
}
variable "s3_bucket_name" {
    type = string
    description = "S3 bucket bucket name for Application to upload images"
    default = "test"
}