terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "deepzS2-terraform-remote-state"
    key    = "aws-bucket-lifecycle/terraform.tfstate"
    region = "sa-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "deepzS2"
      managed-by = "terraform"
    }
  }
}
