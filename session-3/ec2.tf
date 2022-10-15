resource "aws_instance" "main" {
  ami = var.ami  
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ] 
  
  tags = {
    Name        = var.env
  }
}

// Reference to Resource:
// first_label.second_label.attribute 

// Reference to Input variable
// var.variable_name

// aws_security_group = first label
// web = second label
// id  = attribute

// Data Type:
// 1. String = always uses double quotations
// 2. Number = never uses quotations
// 3. Boolean = never uses quotations

// What is a List?
// Car = [ Mercedes, BMW, Audi, Toyota, Suzuki ]
// Fruit = [ apple, orange, banana ]

// Reference = Dynamic
