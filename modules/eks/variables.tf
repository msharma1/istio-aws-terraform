variable "cluster_name" {
  description = "eks cluster name"
  type        = string
}

variable "vpc_id" {
  description = "vpc ID"
  type        = string
}

variable "private_subnets" {
  description = "Private subnets in VPC"
  type        = list(string)
}
