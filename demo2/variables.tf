## Terraform variables

variable "region" {
  type = string
}

variable "profile" {
  type = string
}


## ec2

variable "instance_ami" {
    type = string
}

variable "instance_type" {
    type = string
}

## Network

variable "vpc_cidr_block"{
    type = string
}

variable "public_cidr_block" {
    type = string
}

variable "private_cidr_block" {
    type = string
}

variable "availability_zone" {
    type = string
}

variable "default_cidr_block" {
    type = string
    default = "0.0.0.0/0"
}