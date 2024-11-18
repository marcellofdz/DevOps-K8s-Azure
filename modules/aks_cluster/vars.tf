variable "aks_cluster_name" {
  type = string
}

variable "default_node_pool_name" {
  type = string
}

variable "default_node_pool_vm_size" {
  type = string
}

variable "node_count" {
  type = number
}
variable "aks_cluster_rg" {
  type = string
}

variable "aks_cluster_location" {
  type = string
}

variable "vnet_id" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "subnet_id" {
  type = string
}