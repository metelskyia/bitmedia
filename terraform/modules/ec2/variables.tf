variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_node_name" {
  type        = string
  description = "EC2 instance name"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the EC2 instance"
}

variable "ami" {
  type    = string
  description = "AMI for EC2 instance"
}

variable "security_group_id" {
  description = "ID of the security group"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}