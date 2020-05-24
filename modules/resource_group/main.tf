module "resource_group_tags" {
  source = "../__tags"
  owner = var.owner
  project = var.project
  resource_full_name = var.resource_group_name
  resource_name = "tf-backend"
  resource_type = "resource-group"
}

resource "azurerm_resource_group" "resource_group" {
  location = var.location
  name = module.resource_group_tags.name
  tags = module.resource_group_tags.tags
}

