#Resource Group
resource_group_name        = "rg-hello-world"
location                   = "australiaeast"
#Virtual Network
vnet_name                  = "vnet_web_server"
vnet_address_space         = "10.70.0.0/20"
subnet01_name              = "subnet_frontend"
subnet01_address_prefixes  = "10.70.0.0/24"
subnet02_name              = "subnet_backend"
subnet02_address_prefixes  = "10.70.1.0/24"
pip_name                   = "pip_web_server"
#tags
tags = {
    cost_centre = "abc",
    environment = "dev"
}