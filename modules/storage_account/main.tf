module "storage_account_tags" {
  source = "../__tags"
  owner = var.owner
  project = var.project
  resource_full_name = var.storage_account_name
  resource_name = "tfstate"
  resource_type = "store"
  delimiter = ""
  custom_tags = var.custom_tags
}

resource "azurerm_storage_account" "storage_account" {
  name = module.storage_account_tags.name
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  tags = module.storage_account_tags.tags
}



module "storage_container_tags" {
  source = "../__tags"
  owner = var.owner
  project = var.project
  resource_full_name = var.storage_container_name
  resource_name = "tf-backend"
  resource_type = "storage-container"
}


resource "azurerm_storage_container" "storage_container" {
  name = module.storage_container_tags.name
  storage_account_name = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}
