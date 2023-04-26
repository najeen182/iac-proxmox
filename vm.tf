resource "proxmox_vm_qemu" "test" {
  name        = "test"
  target_node = var.target_cluster_node1
  desc        = "desc=test server;env=test;func=terraform"
  vmid        = 102 #change to yours
  clone       = var.vm_template_name
  onboot      = true

  pool  = var.proxmox_vm_pool_name
  agent = 1

  cores   = 4
  sockets = 1
  cpu     = "host"
  memory  = 4096

  disk {
    storage = var.vm_storage_name
    type    = var.vm_driver_name
    size    = var.vm_template_disk_size
  }

  os_type = var.vm_os_type

  ci_wait    = 180
  ipconfig0  = "gw=172.16.0.1,ip=172.16.0.100/24"
  nameserver = "8.8.8.8"
  network {
    bridge   = var.vm_network_bridge
    model    = var.vm_driver_name
    firewall = "false"
    tag      = 4 #add vlan here
  }
  ciuser     = var.vm_default_user
  cipassword = var.vm_default_password

  lifecycle {
    ignore_changes = [
      network[0].macaddr
    ]
  }

}