output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}

output "bastion_public_ip" {
  description = "Public IP address of the bastion host"
  value       = module.bastion.bastion_public_ip
}

output "private_instance_private_ip" {
  description = "IP address of private instance"
  value = module.vpc.private_instance_private_ip
}

output "ssh_command" {
  description = "SSH command to connect to the bastion host"
  value       = "ssh -i path/to/${var.key_name}.pem ec2-user@${module.bastion.bastion_public_ip}"
}

