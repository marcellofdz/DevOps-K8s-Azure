locals {
  aks_cluster_name          = "aks-dev-cluster"
  aks_cluster_location      = "East US 2"
  kubernetes_version        = "1.31.1"
  dns_prefix                = "aks-dev-redux"
  default_node_pool_name    = "akstesting"
  default_node_pool_vm_size = "Standard_B2s"
  node_count                = 1

  ## Node pools configuration
  priority_nodes  = "Spot"
  eviction_policy = "Delete"
  node_pools = {
    "aksdevwkr1" = {
      node_count           = 1
      vm_size              = "Standard_B2s"
      os_disk_size_gb      = 30
      vnet_subnet_id       = module.vnet.subnet_ids["aks-subnet-1"]
      orchestrator_version = "1.31.1"
      os_type              = "Linux"
    }
    # "aksdevwkr2" = {
    #   node_count           = 1
    #   vm_size              = "Standard_D2_v2"
    #   os_disk_size_gb      = 30
    #   vnet_subnet_id       = module.vnet.subnet_ids["aks-subnet-2"]
    #   node_labels          = { "role" = "worker" }
    #   orchestrator_version = "1.31.1"
    #   os_type              = "Linux"
    # }
    # "aksdevwkr3" = {
    #   node_count           = 1
    #   vm_size              = "Standard_D2_v2"
    #   os_disk_size_gb      = 30
    #   vnet_subnet_id       = module.vnet.subnet_ids["aks-subnet-3"]
    #   node_labels          = { "role" = "worker" }
    #   orchestrator_version = "1.31.1"
    #   os_type              = "Linux"
    # }
  }
}

module "aks_cluster" {
  source                    = "../../modules/aks_cluster"
  aks_cluster_name          = local.aks_cluster_name
  default_node_pool_name    = local.default_node_pool_name
  default_node_pool_vm_size = local.default_node_pool_vm_size
  node_count                = local.node_count
  aks_cluster_rg            = module.resource_group.rg_name
  aks_cluster_location      = local.aks_cluster_location
  kubernetes_version        = local.kubernetes_version
  dns_prefix                = local.dns_prefix
  vnet_id                   = module.vnet.vnet_id
  subnet_id                 = module.vnet.subnet_ids["aks-subnet-1"]
}

module "aks_nodes" {
  source                = "../../modules/aks_node_pools"
  node_pools            = local.node_pools
  kubernetes_cluster_id = module.aks_cluster.aks_cluster_id
  priority_nodes        = local.priority_nodes
  eviction_policy       = local.eviction_policy
}
