terraform {

  required_version = ">=1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.58.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"

  default_tags { #coloca essa tag em todos os recursos criados por esse código
    tags = {
      owner      = "AlineTeles"
      managed-by = "terraform"
    }
  }
}
