output "instance_id" {
  value = aws_instance.this.id
}

output "ec2_public_ips" {
  value = aws_instance.this[*].public_ip
}