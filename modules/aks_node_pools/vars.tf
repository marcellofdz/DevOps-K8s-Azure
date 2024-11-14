variable "node_pools" {
  type = map(object({
    node_count           = number
    vm_size              = string
    os_disk_size_gb      = number
    vnet_subnet_id       = string
    orchestrator_version = string
    os_type              = string
    node_labels          = optional(map(string))
  }))
}

variable "kubernetes_cluster_id" {
  type = string
}