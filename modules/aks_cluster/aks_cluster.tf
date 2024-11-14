resource "azurerm_kubernetes_cluster" "aks_dev_cluster" {
  name                = var.aks_cluster_name
  location            = var.aks_cluster_location
  resource_group_name = var.aks_cluster_rg
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name       = "akstesting"
    vm_size    = "Standard_B2s"
    node_count = 1
    vnet_subnet_id = var.subnet_id
    #temporary_name_for_rotation = "akstesting-temp"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}
