variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "IDs of the public subnets"
  type        = list(string)
}

variable "allowed_ssh_ips" {
  description = "List of IP addresses allowed to SSH to the bastion host"
  type        = list(string)
}

variable "key_name" {
  description = "Name of AWS key pair to use for SSH access"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the bastion host"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Environment name"
  type        = string
}