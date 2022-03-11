provider "azurerm" {
  features {}
}

#Create Resource Group
module "resource_group" {
    source              = "./modules/resourcegroup" 
    resource_group_name = var.resource_group_name
    location            = var.location
    tags                = var.tags
}
#Create Virtual Network and Network Security Group
module "virtual_network" {
    source                    = "./modules/virtualnetwork" 
    resource_group_name       = var.resource_group_name
    location                  = var.location
    vnet_name                 = var.vnet_name
    vnet_address_space        = var.vnet_address_space
    subnet01_name             = var.subnet01_name
    subnet01_address_prefixes = var.subnet01_address_prefixes
    subnet02_name             = var.subnet02_name
    subnet02_address_prefixes = var.subnet02_address_prefixes
    tags                      = var.tags
    depends_on = [
      module.resource_group
    ]
}
#Public IP
module "publicip" {
    source                   = "./modules/publicip"
    location                 = var.location
    resource_group_name      = var.resource_group_name
    name                     = var.pip_name
    sku                      = "Standard"
    allocation_method        = "Static"
    tags                     = var.tags
}