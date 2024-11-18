# locals {
#   ## Node pools configuration
#   priority_nodes  = "Spot"
#   eviction_policy = "Delete"
#   node_pools = {
#     "aksdevwkr1" = {
#       node_count           = 1
#       vm_size              = "Standard_A2_v2"
#       os_disk_size_gb      = 30
#       vnet_subnet_id       = module.vnet.subnet_ids["aks-subnet-1"]
#       orchestrator_version = "1.31.1"
#       os_type              = "Linux"
#     }
#     # "aksdevwkr2" = {
#     #   node_count           = 1
#     #   vm_size              = "Standard_D2_v2"
#     #   os_disk_size_gb      = 30
#     #   vnet_subnet_id       = module.vnet.subnet_ids["aks-subnet-2"]
#     #   node_labels          = { "role" = "worker" }
#     #   orchestrator_version = "1.31.1"
#     #   os_type              = "Linux"
#     # }
#     # "aksdevwkr3" = {
#     #   node_count           = 1
#     #   vm_size              = "Standard_D2_v2"
#     #   os_disk_size_gb      = 30
#     #   vnet_subnet_id       = module.vnet.subnet_ids["aks-subnet-3"]
#     #   node_labels          = { "role" = "worker" }
#     #   orchestrator_version = "1.31.1"
#     #   os_type              = "Linux"
#     # }
#   }
# }


# module "aks_nodes" {
#   source                = "../../modules/aks_node_pools"
#   node_pools            = local.node_pools
#   kubernetes_cluster_id = module.aks_cluster.aks_cluster_id
#   priority_nodes        = local.priority_nodes
#   eviction_policy       = local.eviction_policy
# }
