## Outputs

## ec2 outputs

output "ec2_arn_output" {
    description = "The ec2 arn."
    value = aws_instance.my_ec2_private.arn
}

output "ec2_public_ip" {
    description = "The ec2 public ip."
    value = aws_instance.my_ec2_public.public_ip
}

## network outputs

output "vpc_id_output" {
    description = "The VPC id."
    value = aws_vpc.main.id
}

output "private_subnet" {
    description = "The subnet private id."
    value = aws_subnet.private.id
}

output "public_subnet" {
    description = "The public private id."
    value = aws_subnet.public.id
}

# ##### Data Source

# data "aws_instance" "tag_search" {
#     filter {
#         name = "tag:Name"
#         values = ["gft-workshop-private"]
#     }
# }

# output "ec2_data_source" {
#     description = "The data source output."
#     value = data.aws_instance.tag_search.availability_zone
# }