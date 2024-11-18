output "registry_id" {
    value = azurerm_container_registry.acr.id
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "acr_login_username" {
    value = azurerm_container_registry.acr.admin_username
    sensitive = true
    description = "The username for the container registry"
}

output "acr_login_password" {
  value = azurerm_container_registry.acr.admin_password
  sensitive = true
  description = "The password for the container registry"
}

output "acr_name" {
  value = azurerm_container_registry.acr.name
}