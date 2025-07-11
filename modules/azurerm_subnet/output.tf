output "subnet_name" {
    value = azurerm_subnet.v_net.name
     
}

output "vnet_location" {
    value = azurerm_virtual_network.v_net.location
  
}
variable  {}
variable "subnet_resource_group_name" {}
variable "subnet_virtual_network_name" {}
variable "subnet_address_prefixes" {}