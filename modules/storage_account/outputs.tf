output "storage_account" {
  value = azurerm_storage_account.storage_account
}

output "storage_account_id" {
  value = azurerm_storage_account.storage_account.id
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "storage_container" {
  value = azurerm_storage_container.storage_container
}

output "storage_container_id" {
  value = azurerm_storage_container.storage_container.id
}

output "storage_container_name" {
  value = azurerm_storage_container.storage_container.name
}
