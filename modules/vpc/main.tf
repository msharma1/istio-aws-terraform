
################################################################################
# VPC Module
################################################################################

module "vpc" {
  source     = "terraform-aws-modules/vpc/aws"
  create_vpc = true

  name = "istio-demo"
  cidr = "10.0.0.0/16"

  azs             = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = false
  single_nat_gateway = true

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }

  public_subnet_tags = {
    Name = "overridden-name-public"
  }

  tags = {
    Owner       = "manish"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "istio-demo"
  }
}
