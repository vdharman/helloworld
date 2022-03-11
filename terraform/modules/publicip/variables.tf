variable "resource_group_name" {
    type = string
}
variable "location" {
    type = string
}
variable "name" {
    type = string
}
variable "allocation_method" {
    type = string
}
variable "sku" {
    type = string
}
variable "tags" {
    type        = map
    description = "List of resource tags"
}