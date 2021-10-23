## locals

locals {
    tags_ec2_private = {
    "Name"        = var.ec2_private_name
    "Environment" = "Dev"
    "Department"  = "Infra"
    }

    tags_ec2_public = {
    "Name"        = var.ec2_public_name
    "Environment" = "Dev"
    "Department"  = "Infra"
    }
}