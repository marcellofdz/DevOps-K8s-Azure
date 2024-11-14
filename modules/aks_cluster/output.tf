output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks_dev_cluster.id
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_dev_cluster.name
}