## Infra module

module "infra_module" {
  source = "../demo2/exemplo_a"

  profile = var.profile
  region  = var.region

  # EC2
  instance_ami     = var.instance_ami
  instance_type    = var.instance_type
  ec2_private_name = "${var.ec2_private_name}-${terraform.workspace}"
  ec2_public_name = "${var.ec2_public_name}-${terraform.workspace}"

  ## NETWORK
  vpc_cidr_block     = var.vpc_cidr_block
  private_cidr_block = var.private_cidr_block
  public_cidr_block  = var.public_cidr_block
  availability_zone  = var.availability_zone
  sg_ingress_ports   = var.sg_ingress_ports
  workshop_subnets   = var.workshop_subnets

}