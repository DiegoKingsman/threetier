
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.8.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

locals {
  common_tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
