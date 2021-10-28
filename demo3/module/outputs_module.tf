## Module output

## EC2 OUTPUTS

output "ec2_private_arn" {
    value = module.infra_module.ec2_arn_output
}

output "ec2_public_ip" {
    value = module.infra_module.ec2_public_ip
}

output "ec2_lookup_function" {
    value = module.infra_module.ec2_lookup_function
}

## NETWORK OUTPUTS

output "workshop_vpc_id" {
    value = module.infra_module.vpc_id_output
}
output "vpc_cidr_block" {
    value = module.infra_module.vpc_cidr_block
}

output "private_subnet" {
    value = module.infra_module.private_subnet
}

output "workshop_subnets" {
    value = module.infra_module.workshop_subnets
}