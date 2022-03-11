# VNET Creation
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.vnet_address_space]
  tags                = var.tags
}

resource "azurerm_subnet" "subnet01" {
  name                 = var.subnet01_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet01_address_prefixes]
  service_endpoints    = [ "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage" ]
}

resource "azurerm_subnet" "subnet02" {
  name                 = var.subnet02_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet02_address_prefixes]
  enforce_private_link_endpoint_network_policies = true
}