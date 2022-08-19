module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "<18"

  cluster_version = "1.21"
  cluster_name    = var.cluster_name
  vpc_id          = var.vpc_id
  subnets         = var.private_subnets
  enable_irsa     = true

  # Only need one node to get Karpenter up and running
  worker_groups = [
    {
      instance_type = "t2.medium"
      asg_max_size  = 1
    }
  ]
}
