terraform {
  backend "azurerm" {
    resource_group_name  = "backendRG"
    storage_account_name = "backendstgak"
    container_name       = "backendak"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "e5c8e042-8d4d-4e69-8511-a29fb378ec23"
  features {}
}