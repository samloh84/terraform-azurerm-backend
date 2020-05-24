provider "azurerm" {
  features {
  }
}

locals {
  terraform_state_key = coalesce(var.terraform_state_key, join("/", [
    var.project,
    "terraform.tfstate"]))
}

module "resource_group" {
  source = "./modules/resource_group"

  owner = var.owner
  project = var.project
  custom_tags = var.resource_group_custom_tags
  location = var.location
  resource_group_name = var.resource_group_name

}

module "storage_container" {
  source = "./modules/storage_account"


  owner = var.owner
  project = var.project
  custom_tags = var.storage_account_custom_tags


  storage_account_replication_type = var.storage_account_replication_type
  storage_account_tier = var.storage_account_tier
  location = var.location
  resource_group_name = module.resource_group.resource_group_name
  storage_account_name = var.storage_account_name
  storage_container_name = var.storage_container_name


}

resource "local_file" "backend_tf_file" {
  filename = "${var.project}-backend-config.tf.bak"
  content = <<-EOF
terraform {
  backend "azurerm" {
    resource_group_name = ${module.resource_group.resource_group_name}
    storage_account_name = ${module.storage_container.storage_account_name}
    container_name = ${module.storage_container.storage_container_name}
    key = "${local.terraform_state_key}"
  }
}
EOF

}
