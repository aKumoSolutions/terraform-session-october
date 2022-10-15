variable "env" {
    type = string  
    description = "This is a variable for Environment"
    default = "dev"
}
variable "ami" {
    type = string  
    description = "This is a variable for Environment"
    default = "ami-08e2d37b6a0129927"
}
variable "instance_type" {
    type = string  
    description = "This is a variable for Environment"
    default = "t2.micro"
}

// ${env} = dev