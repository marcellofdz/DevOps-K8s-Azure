locals {
  vnet_name          = "aks-dev-vnet"
  location           = "East US 2"
  vnet_address_space = ["172.15.0.0/16"]
  subnet_address_space = {
    "aks-subnet-1" = ["172.15.1.0/24"]
    "aks-subnet-2" = ["172.15.2.0/24"]
    "aks-subnet-3" = ["172.15.3.0/24"]
  }
}

module "vnet" {
  source               = "../../modules/networking"
  rg_name              = module.resource_group.rg_name
  vnet_name            = local.vnet_name
  location             = local.location
  vnet_address_space   = local.vnet_address_space
  subnet_address_space = local.subnet_address_space
  depends_on           = [module.resource_group]
}