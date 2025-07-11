resource "azurerm_virtual_network" "v_net" {
  name                = var.vnet_name
  location            = var.vnet_location
  address_space       = var.vnet_address_space
  resource_group_name = var.vnet_resource_group_name
}