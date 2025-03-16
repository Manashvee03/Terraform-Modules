# Azure Terraform Module for Network Interface Deployment

## Overview
This Terraform module automates the deployment of an **Azure Network Interface (NIC)** with support for both **static and dynamic private IP allocation**. It allows defining **DNS servers, subnet associations, and gateway load balancer configurations**.

## Features
- Creates an **Azure Network Interface (NIC)**.
- Supports **static and dynamic private IP allocation**.
- Allows specifying **DNS servers**.
- Enables tagging for better resource management.
- Supports **gateway load balancer frontend IP configuration**.

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with required permissions
- An **Existing Virtual Network (VNet) and Subnet**

## Usage

### 1. Initialize Terraform
Run the following command to initialize Terraform:
```sh
tf init
```

### 2. Define Input Variables
Create a `terraform.tfvars` file to specify required variables:
```hcl
nic_name                = "my-nic"
location               = "eastus"
resource_group_name    = "my-resource-group"
dns_servers            = ["8.8.8.8", "8.8.4.4"]
ip_configuration_name  = "ipconfig1"
subnet_id              = "subnet-id"
private_ip_address_allocation = "Static"  # Use "Dynamic" for dynamic allocation
private_ip_address     = "10.0.0.5"  # Required only if allocation is Static
gateway_load_balancer_frontend_ip_configuration_id = null

tags = {
  environment = "production"
  project     = "networking"
}
```

### 3. Apply Terraform Configuration
Run the following command to deploy the resources:
```sh
tf apply -auto-approve
```

### 4. Destroy Resources (If Needed)
To remove all created resources, run:
```sh
tf destroy -auto-approve
```

## Input Variables
| Variable | Type | Description |
|----------|------|-------------|
| `nic_name` | `string` | Name of the Network Interface. |
| `location` | `string` | Azure region for deployment. |
| `resource_group_name` | `string` | Name of the Azure Resource Group. |
| `dns_servers` | `list(string)` | List of DNS servers for the NIC. |
| `ip_configuration_name` | `string` | Name of the IP configuration. |
| `subnet_id` | `string` | The ID of the subnet to attach the NIC. |
| `private_ip_address_allocation` | `string` | IP allocation method: `Static` or `Dynamic`. |
| `private_ip_address_version` | `string` | IP version: `IPv4` or `IPv6`. |
| `private_ip_address` | `string` | Static private IP (if allocation is `Static`). |
| `gateway_load_balancer_frontend_ip_configuration_id` | `string` | Load balancer frontend IP config ID. |
| `tags` | `map(string)` | Tags for the Network Interface. |

## Outputs
| Output | Description |
|--------|-------------|
| `nic_id` | The ID of the created Network Interface. |

## License
This project is licensed under the **GNU General Public License v3.0 (GPLv3)**. See the `LICENSE` file for details.

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)
