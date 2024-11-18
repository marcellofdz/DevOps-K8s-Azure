output "registry_id" {
  value = module.registry.registry_id
}

output "acr_login_server" {
  value = module.registry.acr_login_server
}

output "acr_login_username" {
  value = module.registry.acr_login_username
}

output "acr_login_password" {
  value = module.registry.acr_login_password
}

output "acr_name" {
  value = module.registry.acr_name
}

output "aks_cluster_name" {
  value = module.aks_cluster.aks_cluster_name
}

output "aks_cluster_id" {
  value = module.aks_cluster.aks_cluster_id
}