## Module output

output "workshop_vpc_id" {
    value = module.infra_module.vpc_id_output
}

output "private_subnet" {
    value = module.infra_module.private_subnet
}

output "ec2_private_arn" {
    value = module.infra_module.ec2_arn_output
}