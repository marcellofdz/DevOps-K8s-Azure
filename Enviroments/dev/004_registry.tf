locals {
  registry_name      = "acrdevredux"
  registry_localtion = "East US 2"
  sku_acr            = "Basic"
}

module "registry" {
  source              = "../../modules/registry"
  location            = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_name
  registry_name       = local.registry_name
  sku_acr             = local.sku_acr
}