provider "aws" {
  region  = "us-east-1"
  profile = "sakshi-terraform" //update your user-profile for aws keys
}

module "vpc" {
  source = "./modules/vpc"

  cidr_block    = var.cidr_block
  tenancy       = var.tenancy
}

module "subnet" {
  source = "./modules/subnet"

  vpc_id      = module.vpc.id
  subnet_cidr = var.subnet_cidr
  az          = var.az
}

module "asg" {
  source = "./modules/asg"
  public_subnet = module.subnet.ids[0]
  private_subnet = module.subnet.ids[1]
}

