variable "environment" {
  description = "Environment: dev or prod"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "availability_zones" {
  description = "List of Availability Zones"
  type        = list(string)
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "ec2_node_name" {
  type        = string
  description = "EC2 instance name"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  description = "AMI for EC2 instance"
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {}
}
