## DATA SOURCE

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

## EC2 PRIVATE SUBNET

resource "aws_instance" "my_ec2_private" {
  ami                    = data.aws_ami.app_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id              = aws_subnet.private.id

  tags = local.tags_ec2_private

}

## EC2 PUBLIC SUBNET

resource "aws_instance" "my_ec2_public" {
  ami                    = data.aws_ami.app_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id              = aws_subnet.public.id

  tags = local.tags_ec2_public

}