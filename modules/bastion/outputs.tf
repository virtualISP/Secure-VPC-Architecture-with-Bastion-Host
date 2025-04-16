output "bastion_instance_id" {
  description = "ID of the bastion host instance"
  value       = aws_instance.bastion.id
}

output "bastion_public_ip" {
  description = "Public IP address of the bastion host"
  value       = aws_eip.bastion.public_ip
}

output "private_instances_sg_id" {
  description = "ID of the security group for private instances"
  value       = aws_security_group.private_instances.id
}

output "bastion_sg_id" {
  value = aws_security_group.bastion.id
}
