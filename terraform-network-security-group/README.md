# Azure Terraform Module for Network Security Group (NSG) Deployment

## Overview
This Terraform module automates the deployment of an **Azure Network Security Group (NSG)** and supports defining multiple **security rules dynamically**. It simplifies the management of inbound and outbound access to resources within a virtual network.

## Features
- Creates an **Azure Network Security Group (NSG)**.
- Supports dynamic addition of multiple **security rules**.
- Enables tagging for better resource management.
- Fully configurable with variable-driven rules and metadata.

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with appropriate permissions
- An existing **Resource Group** where the NSG will be deployed

## Usage

### 1. Initialize Terraform
Run the following command to initialize Terraform:
```sh
terraform init
```

### 2. Define Input Variables
Create a `terraform.tfvars` file to specify the required variables:
```hcl
nic_name             = "my-nsg"
location             = "eastus"
resource_group_name  = "my-resource-group"

sec_rules = [
  {
    name                       = "allow-ssh"
    description                = "Allow SSH from anywhere"
    protocol                   = "Tcp"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_port_range     = "22"
    destination_address_prefix = "*"
    direction                  = "Inbound"
    access                     = "Allow"
    priority                   = 100
  }
]

tags = {
  environment = "production"
  project     = "networking"
}
```

### 3. Apply Terraform Configuration
Deploy the resources using:
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
| `nic_name` | `string` | Name of the Network Security Group. |
| `location` | `string` | Azure region for deployment. |
| `resource_group_name` | `string` | Name of the Azure Resource Group. |
| `sec_rules` | `list(object)` | List of security rules (name, ports, protocol, priority, etc.). |
| `tags` | `map(string)` | Tags for the Network Security Group. |

## Outputs

| Output | Description |
|--------|-------------|
| `nsg_id` | The ID of the created Network Security Group. |

## License
This project is licensed under the **GNU General Public License v3.0 (GPLv3)**. See the `LICENSE` file for details.

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)