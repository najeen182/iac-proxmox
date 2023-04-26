terraform {
    #enable if you wish to connect to remote system
#   backend "http" {

#   }

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url    = "https://localhost:8006/api2/json" #replace with your proxmox cluster
  pm_log_enable = true
}
