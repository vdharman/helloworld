variable "resource_group_name" {
    type = string
}
variable "location" {
    type = string
}
variable "vnet_name" {
  type = string
}
variable "vnet_address_space" {
  type = string
}
variable "subnet01_name" {
  type = string
}
variable "subnet01_address_prefixes" {
  type = string
}
variable "subnet02_name" {
  type        = string
}
variable "subnet02_address_prefixes" {
  type = string
}
variable "tags" {
    type = map
}