output "vnet_name" {
  value = azurerm_virtual_network.main_vnet.name
  description = "vnet name"
}

output "subnet_ids" {
  value = { for k, v in azurerm_subnet.subnets_aks : k => v.id }
  description = "subnet ids"
}

output "resource_group_location" {
  value = azurerm_virtual_network.main_vnet.location
  description = "rg location"
}

output "vnet_id" {
  value = azurerm_virtual_network.main_vnet.id
  description = "vnet id"
}