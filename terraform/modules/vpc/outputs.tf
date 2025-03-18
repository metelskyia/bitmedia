output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "availability_zones" {
  value = var.availability_zones
}

output "security_group_id" {
  value = aws_security_group.this.id
}