terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.59.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "deepzs2remotestate"
    container_name       = "remote-state"
    key                  = "pipeline-github-actions/terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "deepzS2"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "deepzs2-terraform-remote-state"
    key    = "aws-vpc/terraform.lfstate"
    region = "sa-east-1"
  }
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"

  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "deepzs2remotestate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }
}