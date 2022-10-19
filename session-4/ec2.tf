resource "aws_instance" "main" {
  ami = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ] 
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-instance"
    Name2       = format("%s-instance", var.env)
    # dev-instance, qa-instance, stage-instance
  }
}
resource "aws_instance" "frontend" {
  ami = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ] 
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-frontend-instance"
     # dev-frontend-instance, qa-frontend-instance, stage-frontend-instance
  }
}
resource "aws_instance" "backend" {
  ami = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ] 
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-backend-instance"
    # dev-backend-instance, qa-backend-instance, stage-backend-instance
  }
}
resource "aws_instance" "database" {
  ami = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ] 
  user_data = data.template_file.user_data.rendered
  tags = {
    Name        = "${var.env}-database-instance"
    # dev-database-instance, qa-database-instance, stage-database-instance
  }
}



// Reference to Resource
// first_label.second_label.attribute

// Reference to Input Variable
// var.variable_name

// Reference to Data Source
// data.first_label.second_label.attribute

// Terraform has functions
