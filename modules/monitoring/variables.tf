variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "bastion_host_id" {
  description = "ID of the bastion host instance"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}