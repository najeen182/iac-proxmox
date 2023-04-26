# iac-proxmox

**Install Pre-Commit Hook**

```
pre-commit install
```

Creating VM in [proxmox](https://www.proxmox.com/en/) using terraform

### Getting Started

1. Create token in proxmox to access proxmox from terraform
2. Export the terraformm id and secret

```
export PM_API_TOKEN_ID="myuser@pve\!terraform"
export PM_API_TOKEN_SECRET="changeme"

```

1. Initialize Terraform

```
terraform init
```

2. Plan the resource

```
terraform plan --var vm_default_password=ubuntu #changepassword
```

3. Apply the resource

```
terraform apply --var vm_default_password=ubuntu #changepassword
```
