
variable "location" {
  type = string
  default = "Southeast Asia"
}


variable "resource_group_name" {
  type = string
  default = null
}

variable "storage_container_name" {
  type = string
  default = null
}
variable "storage_account_name" {
  type = string
  default = null
}

variable "storage_account_tier" {
  default = "Standard"
}
variable "storage_account_replication_type" {
  default = "LRS"
}

variable "terraform_state_key" {
  type = string
  default = null
}
