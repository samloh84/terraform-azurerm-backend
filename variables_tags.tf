
variable "owner" {
  type = string
}
variable "project" {
  type = string
}

variable "resource_group_custom_tags" {
  type = map(string)
  default = {}
}
variable "storage_account_custom_tags" {
  type = map(string)
  default = {}
}
