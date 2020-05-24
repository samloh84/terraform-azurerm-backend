variable "location" {
  type = string
  default = "Southeast Asia"
}

variable "resource_group_name" {
  type = string
  default = null
}


variable "storage_account_name" {
  type = string
  default = null
}


variable "storage_container_name" {
  type = string
  default = null
}

variable "storage_account_tier" {
  type = string
  default = "Standard"
}
variable "storage_account_replication_type" {
  type = string
  default = "LRS"
}

