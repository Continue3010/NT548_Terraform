provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones  = var.availability_zones
}

module "security_groups" {
  source             = "./modules/security_groups"
  vpc_id            = module.vpc.vpc_id
  allowed_ssh_ip    = var.allowed_ssh_ip
}

module "ec2" {
  source             = "./modules/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  public_sg_id      = module.security_groups.public_sg_id
  private_sg_id     = module.security_groups.private_sg_id
  key_name          = var.key_name
}
