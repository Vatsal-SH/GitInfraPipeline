module "resource_group" {
  source = "../azurerm_resource_group"
     rg_names= var.resource_group
}

module "storage_account" {
  source = "../azurerm_storage_account"
  storage_account_names = var.storage_account
}

