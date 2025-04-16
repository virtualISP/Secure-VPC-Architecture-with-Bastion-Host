provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Secure-VPC-Bastion"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}