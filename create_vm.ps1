[CmdletBinding()]
param (
    [Parameter(Mandatory)] [string] $resource_group_name,
    [Parameter(Mandatory)] [string] $location,
    [Parameter(Mandatory)] [string] $vm_image_name,
    [Parameter(Mandatory)] [string] $vm_name,
    [Parameter(Mandatory)] [string] $vnet_name,
    [Parameter(Mandatory)] [string] $subnet_name,
    [Parameter(Mandatory)] [string] $public_ip
)

New-AzVm `
    -ResourceGroupName $resource_group_name `
    -Name $vm_name `
    -Location $location `
    -VirtualNetworkName $vnet_name `
    -SubnetName $subnet_name `
    -SecurityGroupName "nsg" `
    -PublicIpAddressName $public_ip `
    -OpenPorts 80 `
    -Image $vm_image_name