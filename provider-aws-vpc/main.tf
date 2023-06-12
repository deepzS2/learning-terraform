terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "deepzs2-terraform-remote-state"
    key    = "aws-vpc-provider/terraform.lfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "deepzS2"
      managed-by = "terraform"
      region     = "sa-east-1"
    }
  }
}

provider "aws" {
  alias  = "eua"
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "deepzS2"
      managed-by = "terraform"
      region     = "us-east-1"
    }
  }
}

