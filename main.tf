locals {
  region = "eu-west-1"
}

terraform {
}

provider "aws" {
  region = local.region
  alias  = "default"
}

module "vpc" {
  source       = "./modules/vpc"
  region       = local.region
  cluster_name = var.cluster_name
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}
