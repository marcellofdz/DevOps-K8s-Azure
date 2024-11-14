resource "azurerm_resource_group" "aks_resource_group" {
  name = var.rg_name
  location = var.rg_az
}