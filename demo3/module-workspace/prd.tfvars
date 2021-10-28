## Inputs

environment = "prd"
region  = "us-east-1"
profile = "workshop-demo"

instance_ami  = "ami-02e136e904f3da870"
instance_type = "t2.micro"

vpc_cidr_block     = "172.16.0.0/16"
public_cidr_block  = "172.16.1.0/24"
private_cidr_block = "172.16.2.0/24"
workshop_subnets = ["172.16.1.0/24","172.16.2.0/24"]

availability_zone = "us-east-1a"

ec2_private_name = "gft-workshop-private"
ec2_public_name  = "gft-workshop-public"

sg_ingress_ports = [22, 80, 443, 8080]