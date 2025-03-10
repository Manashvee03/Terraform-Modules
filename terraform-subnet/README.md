# Azure Terraform Module for Subnet Deployment

## Overview
This Terraform module automates the deployment of an **Azure Subnet** within a Virtual Network (VNet). It supports delegation, private endpoint policies, service endpoints, and more.

## Features
- Creates an **Azure Subnet** within a specified VNet.
- Supports **subnet delegation** for specific Azure services.
- Allows configuration of **service endpoints**.
- Enables **private endpoint and private link service network policies**.
- Supports **default outbound access control**.

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with required permissions
- An **existing Virtual Network (VNet) and Resource Group**

## Usage

### 1. Initialize Terraform
Run the following command to initialize Terraform:
```sh
terraform init
```

### 2. Define Input Variables
Create a `terraform.tfvars` file to specify required variables:
```hcl
subnet_name                 = "my-subnet"
resource_group_name         = "my-resource-group"
vnet_name                   = "my-vnet"
address_prefixes            = ["10.0.1.0/24"]
private_endpoint_network_policies = "Enabled"
private_link_service_network_policies = true
default_outbound_access     = true
service_endpoints           = ["Microsoft.Storage", "Microsoft.Sql"]
subnet_delegations = [{
  subnet_delegation_name  = "Microsoft.ContainerInstance/containerGroups"
  service_delegation_name = "Microsoft.ContainerInstance/containerGroups"
  actions                = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
}]
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
| `subnet_name` | `string` | Name of the subnet |
| `resource_group_name` | `string` | Name of the resource group |
| `vnet_name` | `string` | Name of the Virtual Network |
| `address_prefixes` | `list(string)` | CIDR blocks for the subnet |
| `private_endpoint_network_policies` | `string` | Enable/Disable private endpoint network policies |
| `private_link_service_network_policies` | `bool` | Enable/Disable private link service network policies |
| `default_outbound_access` | `bool` | Enable/Disable default outbound access |
| `service_endpoints` | `list(string)` | List of service endpoints to enable |
| `subnet_delegations` | `list(object)` | List of subnet delegations |

## Outputs
| Output | Description |
|--------|-------------|
| `subnet_id` | The ID of the created subnet |

## License
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)
