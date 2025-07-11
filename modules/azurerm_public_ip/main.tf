resource "azurerm_public_ip" "example" {
  name                = var.pip_name
  resource_group_name = var.pip_rg
  location            = var.pip_location
  allocation_method   = "Static"

 
  }