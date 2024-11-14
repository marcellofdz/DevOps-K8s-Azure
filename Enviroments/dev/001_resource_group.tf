locals {
  resource_group_name = "aks-dev"
  resource_group_az   = "East US 2"
}

module "resource_group" {
  source  = "../../modules/rg"
  rg_name = local.resource_group_name
  rg_az   = local.resource_group_az
}