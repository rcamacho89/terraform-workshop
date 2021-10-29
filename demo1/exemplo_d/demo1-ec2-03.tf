## ec2 

resource "aws_instance" "my_ec2_private" {
  ami             = "ami-02e136e904f3da870"
  instance_type   = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id       = aws_subnet.private.id

  tags = {
    "Name" = "workshop-private"
  }

}

resource "aws_instance" "my_ec2_public" {
  ami             = "ami-02e136e904f3da870"
  instance_type   = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id       = aws_subnet.public.id

  tags = {
    "Name" = "workshop-public"
  }

}


