# ## ec2 

# resource "aws_instance" "my_ec2_private" {
#   ami                    = var.instance_ami
#   instance_type          = var.instance_type
#   vpc_security_group_ids = [aws_security_group.allow_ssh.id]
#   subnet_id              = aws_subnet.private.id

#   tags = {
#     "Name" = "gft-workshop-private"
#   }

# }

# resource "aws_instance" "my_ec2_public" {
#   ami                    = var.instance_ami
#   instance_type          = var.instance_type
#   vpc_security_group_ids = [aws_security_group.allow_ssh.id]
#   subnet_id              = aws_subnet.public.id

#   tags = {
#     "Name" = "gft-workshop-public"
#   }

# }


