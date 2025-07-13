terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "backend_rg"
    storage_account_name = "backend1stga"
    container_name       = "backend1container"
    key                  = "prod1.tfstate"
    subscription_id = "93b568fd-bf85-44bc-8f71-c314751c396d"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "93b568fd-bf85-44bc-8f71-c314751c396d"
}