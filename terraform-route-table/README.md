# Azure Terraform Module for Route Table Deployment

## Overview
This Terraform module automates the deployment of an **Azure Route Table** and its association with a subnet. It allows enabling or disabling BGP route propagation and supports subnet association as an optional feature.

## Features
- Creates an **Azure Route Table**.
- Supports **BGP route propagation**.
- Optionally associates the route table with a subnet.
- Enables tagging for better resource management.

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with required permissions
- An **existing Virtual Network (VNet) and Subnet**

## Usage

### 1. Initialize Terraform
Run the following command to initialize Terraform:
```sh
tf init
```

### 2. Define Input Variables
Create a `terraform.tfvars` file to specify required variables:
```hcl
route_table_name             = "my-route-table"
resource_group_name          = "my-resource-group"
location                     = "eastus"
bgp_route_propagation_enabled = true
rt_associate                 = true
subnet_id                    = "subnet-id"
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
| `route_table_name` | `string` | Name of the Route Table. |
| `resource_group_name` | `string` | Name of the Azure Resource Group. |
| `location` | `string` | Azure region where the Route Table will be deployed. |
| `bgp_route_propagation_enabled` | `bool` | Enable/Disable BGP route propagation. Default: `true`. |
| `rt_associate` | `bool` | Enable/Disable association of the route table with a subnet. Default: `false`. |
| `subnet_id` | `string` | The ID of the subnet to associate the Route Table with. Required if `rt_associate` is `true`. |
| `tags` | `map(string)` | A mapping of tags to assign to the Route Table. |

## Outputs
| Output | Description |
|--------|-------------|
| `rt` | The ID of the created Route Table. |

## License
This project is licensed under the **GNU General Public License v3.0 (GPLv3)**. See the `LICENSE` file for details.

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)
