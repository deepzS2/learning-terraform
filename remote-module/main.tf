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
    key                  = "azure-vm-remote-module/terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "3.5.0"

  resource_group_name = azurerm_resource_group.resource_group.name
}
