# Azure Terraform Module for Virtual Network Deployment

## Overview
This Terraform module automates the deployment of an **Azure Virtual Network (VNet)** with configurable address space, private endpoint policies, and tags. It allows users to create a VNet in a specified Azure region and customize networking options.

## Features
- Creates an **Azure Virtual Network (VNet)**
- Allows configuration of **region, name, and address space**
- Supports **private endpoint policies**
- Enables **custom tags** for resource management

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with required permissions
- An **existing resource group**

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
vnet_name = "my-vnet"
address_space = ["10.0.0.0/16"]
private_endpoint_vnet_policies = "Disabled"
tags = {
  Environment = "Production"
  Owner       = "Admin"
}
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
| `location` | `string` | Azure region where the Virtual Network is deployed |
| `resource_group_name` | `string` | Name of the resource group |
| `vnet_name` | `string` | Name of the Virtual Network |
| `address_space` | `list(string)` | Address space used by the Virtual Network |
| `private_endpoint_vnet_policies` | `string` | The Private Endpoint VNet Policies for the Virtual Network. Possible values are Disabled and Basic. |
| `tags` | `map(string)` | Key-value pairs for tagging the Virtual Network |

## Outputs
| Output | Description |
|--------|-------------|
| `vnet_id` | The ID of the created Virtual Network |

## License
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

---

## Note

This is a module if use Data blocks and Provider if deploying directly from this or import as Module in your terraform Code.

---

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)
