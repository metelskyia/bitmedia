resource "aws_key_pair" "key" {
  key_name   = "ec2-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key.key_name
  subnet_id              = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group_id]

  tags = merge(
    {
      Name = var.ec2_node_name
    },
    var.tags
  )
}

resource "local_file" "ansible_inventory" {
  filename = "../ansible/inventory.ini"
  content  = templatefile("${path.root}/inventory.tpl", {
    public_ips = aws_instance.this[*].public_ip
  })
}