data "aws_eks_cluster" "default" {
  name = var.cluster_name
  depends_on = module.eks
}

data "aws_eks_cluster_auth" "default" {
  name = var.cluster_name
  depends_on = module.eks
}