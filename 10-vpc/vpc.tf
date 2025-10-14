module "vpc" {
  source                = "git::https://github.com/ranjith2007/terraform-aws-vpc.git?ref=main"
  vpc_cidr              = var.vpc_cidr
  project_name          = var.project_name
  environment           = var.environment
  common_tags           = var.comman_tags
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required   = var.is_peering_required
}