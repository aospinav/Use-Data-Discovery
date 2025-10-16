data "aws_vpc" "id_vpc" {
  tags = {
    Name = var.vpc_name
  }
}

data "aws_subnet" "id_subnet" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.id_vpc.id]
  }

  vpc_id = data.aws_vpc.id_vpc.id

  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}

data "aws_security_group" "id_sg" {
  filter {
    name   = "tag:Name"
    values = [var.security_group_name]
  }

  vpc_id = data.aws_vpc.id_vpc
}

data "aws_ami" "amazon_linux_2023" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


