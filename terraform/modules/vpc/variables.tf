variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnets" {
  description = "List of CIDR for public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of Availability Zones for subnets"
  type        = list(string)
}

variable "ingress_ports" {
  description = "List of ingress ports"
  type        = string
  default     = "22,80,443"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
