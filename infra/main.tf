module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr
}

module "sg" {
  source              = "./modules/sg"
  vpc_id              = module.vpc.vpc_id
  security_group_name = local.security_group_name
  description         = var.security_group_description
  ingress_from_port   = var.ingress_from_port
  ingress_to_port     = var.ingress_to_port
  ingress_protocol    = var.ingress_protocol
  ingress_cidr_blocks = var.ingress_cidr_blocks
  egress_from_port    = var.egress_from_port
  egress_to_port      = var.egress_to_port
  egress_protocol     = var.egress_protocol
  egress_cidr_blocks  = var.egress_cidr_blocks
}