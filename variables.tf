variable "aws_region" {
  description = "region of the vpc"
  type        = string
}

variable "project_id" {
  description = "id of the project"
  type        = string
}

variable "vpc_name" {
  description = "name of vpc main"
  type        = string
}

variable "public_subnet_name" {
  description = "name of the public subnet"
  type        = string
}

variable "security_group_name" {
  description = "name security group"
  type        = string
}

variable "type_instance" {
  description = "type of instance to deploy"
  type        = string
}

variable "tags" {
  description = "tags for the project"
  type        = map(string)
}



