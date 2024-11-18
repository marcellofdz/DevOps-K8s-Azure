resource "azurerm_container_registry" "acr" {    
  name                = var.registry_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku_acr
  admin_enabled       = true      
}