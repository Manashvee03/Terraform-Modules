# Azure Terraform Module for Resource Group Deployment

## Overview
This Terraform module automates the deployment of an **Azure Resource Group** with configurable tags. It allows users to create a resource group in a specified Azure region and apply custom metadata using tags.

## Features
- Creates an **Azure Resource Group**
- Allows configuration of **region and name**
- Supports **custom tags**

## Prerequisites
Before using this module, ensure you have:
- Terraform installed (`>=1.0`)
- An **Azure subscription** with required permissions

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
| `location` | `string` | Azure region where the resource group is deployed |
| `resource_group_name` | `string` | Name of the resource group |
| `tags` | `map(string)` | Key-value pairs for tagging the resource group |

## Outputs
| Output | Description |
|--------|-------------|
| `resource_group_id` | The ID of the created resource group |

## License
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

---

## Note

This is a module if use Data blocks and Provider if deploying directly from this or import as Module in your terraform Code.

---

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)
