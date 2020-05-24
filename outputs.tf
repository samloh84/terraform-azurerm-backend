output "resource_group_name" {
  value = module.resource_group.resource_group_name
}
output "storage_account_name" {
  value = module.storage_container.storage_account_name
}
output "container_name" {
  value = module.storage_container.storage_container_name
}

output "key" {
  value = local.terraform_state_key
}