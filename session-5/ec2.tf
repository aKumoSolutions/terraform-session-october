resource "aws_instance" "main" {
  count                  = 3 #Meta Argument
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = {
    Name = "${var.env}-${count.index}"
  }
}
// count = 3 
// (Numeric) = 1, 2, 3
// (Index)   = 0, 1, 2




