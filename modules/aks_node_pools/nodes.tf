resource "azurerm_kubernetes_cluster_node_pool" "aks_dev_nodes" {
  for_each = var.node_pools
  name = each.key
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size = each.value.vm_size
  node_count = each.value.node_count
  os_disk_size_gb = each.value.os_disk_size_gb
  vnet_subnet_id = each.value.vnet_subnet_id
  orchestrator_version = each.value.orchestrator_version
  os_type = each.value.os_type

  # Añadir etiquetas si las tienes definidas
  tags = {
    environment = "dev"
  }

  # Campos opcionales
  node_labels = each.value.node_labels
}
