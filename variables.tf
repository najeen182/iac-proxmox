variable "PM_API_TOKEN_ID" {
  type        = string
  default     = ""
  description = "Proxmox API Token ID"
}

variable "PM_API_TOKEN_SECRET" {
  type        = string
  default     = ""
  description = "Proxmox API Token Secret"
}

variable "proxmox_vm_pool_name" {
  type    = string
  default = "local" #chane the pool name
}

variable "target_cluster_node1" {
  type        = string
  default     = "node-1" #change to yours
  description = "Proxmox Cluster Node 1"
}

variable "vm_template_name" {
  type        = string
  default     = "ubuntu22"
  description = "Proxmox Ubunut template"
}

variable "vm_os_type" {
  type    = string
  default = "cloud-init"
}

variable "vm_network_bridge" {
  type    = string
  default = "vmbr0"
}

variable "vm_driver_name" {
  type    = string
  default = "virtio"
}

variable "vm_default_user" {
  type    = string
  default = "ubuntu"
}

variable "vm_storage_name" {
  type    = string
  default = "vm-storage"
}

variable "vm_default_password" {
  type        = string
  default     = ""
  description = "Grab the common password from the passwordmanager"
}

variable "vm_template_disk_size" {
  type    = string
  default = "20G"
}
