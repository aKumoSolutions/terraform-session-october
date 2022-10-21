resource "aws_security_group" "web" {
  name        = "web-instance-sg"
  description = "This is a security group for Web Instance"
  vpc_id      = "vpc-064fe67e"
}

resource "aws_security_group_rule" "web_ingress" {
  count             = length(var.ingress_ports)  # Length can help you to count
  # count.index = 4 (0, 1, 2, 3, 4)
  type              = "ingress"
  from_port         = element( var.ingress_ports, count.index )
  to_port           = element( var.ingress_ports, count.index )
  protocol          = "tcp"
  cidr_blocks       = [ element( var.ingress_cidrs, count.index ) ]
  security_group_id = aws_security_group.web.id
}

resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web.id
}