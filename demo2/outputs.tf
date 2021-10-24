## Outputs

## EC2 OUTPUTS

output "ec2_arn_output" {
    description = "The ec2 arn."
    value = aws_instance.my_ec2_private.arn
}

output "ec2_public_ip" {
    description = "The ec2 public ip."
    value = aws_instance.my_ec2_public.public_ip
}

output "ec2_lookup_function" {
    description = "The lookup function"
    value = lookup(local.tags_ec2_private,"Department")
}

## NETWORK OUTPUTS

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

output "vpc_cidr_block" {
    description = "The VPC cidr block."
    value = aws_vpc.main.cidr_block
}

output "workshop_subnets" {
    description = "The workshop subnets"
    value = element(var.workshop_subnets,1)
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