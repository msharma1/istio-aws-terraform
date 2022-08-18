locals {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "istio-tf-backend"
    key            = "terraform.tfstate"
    region         = local.region
  }
}

provider "aws" {
  region = local.region
}

