# Azure Terraform Module for Virtual Machine Deployment

## Overview
This Terraform module automates the deployment of an **Azure Windows Virtual Machine** with a **Network Interface Card (NIC)**. The VM is configured with dynamic private IP allocation and supports customization via input variables.

## Features
- Deploys an Azure **Windows Virtual Machine**
- Creates a **Network Interface (NIC)** and assigns it to the VM
- Allows configuration of **VM size, OS disk, and admin credentials**
- Supports **custom networking** by providing a subnet ID
- Provides options for **storage account types** and **OS SKU selection**

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with required permissions
- A **Resource Group** created in Azure
- A **Virtual Network with Subnet** created in Azure

## Usage
### 1. Initialize Terraform
Run the following command to initialize Terraform:
```sh
terraform init
```

### 2. Define Input Variables
Create a `terraform.tfvars` file to specify required variables:
```hcl
location = "East US"
resource_group_name = "my-resource-group"
nic_name = "my-nic"
subnet_id = "/subscriptions/<sub-id>/resourceGroups/<rg-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>/subnets/<subnet-name>"
virtual_machine_name = "my-vm"
vm_size = "Standard_F2"
admin_username = "adminuser"
admin_password = "SecurePassword123"
storage_account_type = "Standard_LRS"
sku = "2016-Datacenter"
```

### 3. Apply Terraform Configuration
Run the following command to deploy the resources:
```sh
terraform apply -auto-approve
```

### 4. Destroy Resources (If Needed)
To remove all created resources, run:
```sh
terraform destroy -auto-approve
```

## Input Variables
| Variable | Type | Description |
|----------|------|-------------|
| `location` | `string` | Azure region where the VM is deployed |
| `resource_group_name` | `string` | Name of the resource group |
| `nic_name` | `string` | Name of the Network Interface Card (NIC) |
| `subnet_id` | `string` | Subnet ID where the NIC will be attached |
| `virtual_machine_name` | `string` | Name of the Virtual Machine |
| `vm_size` | `string` | Azure VM size (e.g., `Standard_F2`) |
| `admin_username` | `string` | Admin username for the VM |
| `admin_password` | `string` | Admin password for the VM |
| `storage_account_type` | `string` | Storage type for the OS disk (e.g., `Standard_LRS`) |
| `sku` | `string` | OS SKU (e.g., `2016-Datacenter`) |

## Outputs
| Output | Description |
|--------|-------------|
| `vm_id` | The ID of the deployed virtual machine |
| `nic_id` | The ID of the network interface attached to the VM |

## License
This project is licensed under the **GPL v3**. See the `LICENSE` file for details.

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)

