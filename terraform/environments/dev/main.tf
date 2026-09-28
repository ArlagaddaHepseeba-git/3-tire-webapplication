terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket       = "hepsi-terraform-state-2026-5224"
    key          = "three-tier/dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "dev_security_group" {
  source = "../../modules/security-group"

  name        = "three-tier-dev-sg"
  description = "Security group for three-tier development server"

  ingress_rules = [
    {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Tomcat"
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

module "dev_server" {
  source = "../../modules/ec2"

  ami                = "ami-007b1f3fdea0383d9"
  instance_type      = var.instance_type
  name               = "three-tier-dev-server"
  security_group_ids = [module.dev_security_group.security_group_id]
}
