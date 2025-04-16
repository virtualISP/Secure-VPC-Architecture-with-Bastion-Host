module "vpc" {
  source = "./modules/vpc"

  private_instance_ami = ""
  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  environment          = var.environment
  bastion_sg_id = module.bastion.bastion_sg_id
  key_name = var.key_name
}

module "bastion" {
  source = "./modules/bastion"

  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  allowed_ssh_ips   = var.allowed_ssh_ips 
  key_name          = var.key_name
  instance_type     = var.bastion_instance_type
  environment       = var.environment
}

module "monitoring" {
  source = "./modules/monitoring"

  vpc_id          = module.vpc.vpc_id
  bastion_host_id = module.bastion.bastion_instance_id
  environment     = var.environment
}

