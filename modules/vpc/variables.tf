variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "key_name" {
  description = "Key name"
  type = string
  
}

variable "private_instance_ami" {
  description = "AMI ID for the private instance"
  type        = string
}

variable "bastion_sg_id" {
  description = "Security Group ID of the Bastion Host"
  type        = string
}


