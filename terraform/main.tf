provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name           = "${var.environment}-vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnets     = var.public_subnets
  availability_zones = var.availability_zones
  ingress_ports      = "22,80,443"
  tags               = merge(var.tags, { Environment = var.environment })
}

module "ec2" {
  source = "./modules/ec2"
  ec2_node_name = var.ec2_node_name
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_ids[0]
  security_group_id  = module.vpc.security_group_id
  tags          = merge(var.tags, { Environment = var.environment })
}