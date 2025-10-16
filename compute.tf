resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = var.type_instance
  subnet_id                   = data.aws_subnet.id_subnet.id
  vpc_security_group_ids      = [data.aws_security_group.id_sg.id]
  associate_public_ip_address = true

  tags = var.tags
}