terraform {
  cloud {
    organization = "ssram4298"
    workspaces {
      name = "terraform-wordpress"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.aws_region
  default_tags {
    tags = {
      App         = var.app_name
      Environment = var.environment
      Terraform   = "True"
    }
  }
}