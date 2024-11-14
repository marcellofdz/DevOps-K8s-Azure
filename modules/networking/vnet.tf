resource "azurerm_virtual_network" "main_vnet" {
  name = var.vnet_name
  location = var.location
  resource_group_name = var.rg_name
  address_space = var.vnet_address_space

  tags = {
    environment = "aks-dev"
  }
}

resource "azurerm_subnet" "subnets_aks" {
    for_each = var.subnet_address_space
    name = each.key
    resource_group_name = var.rg_name
    virtual_network_name = azurerm_virtual_network.main_vnet.name
    address_prefixes = each.value
}