module "rg_dev" {
  source      = "../../modules/azurerm_resource_group"
  rg_name     = "rg_dev1"
  rg_location = "westus"

}

module "vnet" {
  source                   = "../../modules/azurerm_virtual_network"
  depends_on               = [module.rg_dev]
  vnet_name                = "vnet_dev"
  vnet_location            = module.rg_dev.rg_location
  vnet_address_space       = ["10.0.0.0/16"]
  vnet_resource_group_name = module.rg_dev.rg_name
}

module "subnet_dev" {
  source                      = "../../modules/azurerm_subnet"
  depends_on                  = [module.vnet]
  subnet_name                 = "snet_dev"
  subnet_resource_group_name  = module.rg_dev.rg_name
  subnet_virtual_network_name = module.vnet.vnet_name
  subnet_address_prefixes     = ["10.0.1.0/24"]

}

# module "pip_dev" {
#   source       = "../../modules/azurerm_public_ip"
#   depends_on   = [module.gen_rg]
#   pip_name     = "pip_dev"
#   pip_rg       = "rg_dev"
#   pip_location = "uk south"

# }
