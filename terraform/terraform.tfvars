#VPC
region             = "eu-central-1"
availability_zones = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
vpc_cidr           = "10.0.0.0/16"
public_subnets     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

#EC2
ec2_node_name   = "dev-node"
instance_type   = "t2.micro"
ami             = "ami-07eef52105e8a2059"

#General
environment     = "dev"
tags = {
  Environment   = "dev"
}
