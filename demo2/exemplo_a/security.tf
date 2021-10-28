## DYNAMIC BLOCK

resource "aws_security_group" "allow_ssh" {

  name        = "allow_public_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = var.sg_ingress_ports
    content {
        description = "SSH from VPC"
        from_port   = ingress.value
        to_port     = ingress.value
        protocol    = "tcp"
        cidr_blocks = [aws_vpc.main.cidr_block]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_public_ssh"
  }

  lifecycle {
    create_before_destroy = true
  }
  
}