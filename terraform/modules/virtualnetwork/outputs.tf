output "virtual_network_output" {
    value       = azurerm_virtual_network.vnet
    description = "Virtual Network Contents"
}
output "subnet01_output" {
    value       = azurerm_subnet.subnet01
    description = "Subnet01 Contents"
}
output "subnet02_output" {
    value       = azurerm_subnet.subnet02
    description = "Subnet02 Contents"
}