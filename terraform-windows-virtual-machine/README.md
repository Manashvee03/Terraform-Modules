# Terraform Azure Virtual Machine and Network Configuration

This repository contains Terraform configuration files to deploy a Windows virtual machine (VM) and a network interface card (NIC) in Microsoft Azure. The configuration includes the ability to define IP allocation (either static or dynamic) for the NIC, customize VM sizes, disk types, and identity configurations.

## Project Overview

This project allows you to deploy the following resources in Azure:

1. **Network Interface Card (NIC)**:
   - Configured with either static or dynamic private IP allocation.
   - Attaches to a virtual machine (VM).

2. **Windows Virtual Machine (VM)**:
   - Configured with customizable VM sizes, operating system images, and disk types.
   - Includes options for secure boot, user-assigned managed identities, and custom admin credentials.

## Features

- **Customizable Network Interface**:
  - IP allocation type (Static or Dynamic).
  - Option to provide a static private IP address when necessary.

- **Windows Virtual Machine**:
  - Choose VM size (e.g., Standard_F2).
  - Select the image publisher, offer, SKU, and version for the VM (e.g., Windows Server 2016).
  - Enable secure boot and assign user-managed identities.

## Repository Structure

```
.
├── main.tf            # Contains the Terraform resource definitions for VM and NIC.
├── variables.tf       # Contains variable definitions for custom configurations.
├── README.md          # This readme file.
└── LICENSE            # The GPLv3 License file.
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) version 0.14 or later.
- An active Azure subscription.
- Azure CLI or Service Principal for authentication to Azure.
- A **Resource Group** created in Azure
- A **Virtual Network with Subnet** created in Azure

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Manashvee03/Terraform-Modules
cd terraform-windows-virtual-machine
```

### 2. Set up your Azure provider

You will need to authenticate to Azure using the Azure CLI, Service Principal, or Managed Identity. To authenticate with the Azure CLI, run the following command:

```bash
az login
```

Alternatively, if you are using a Service Principal, set up the required environment variables for authentication:

```bash
export ARM_CLIENT_ID="<your-client-id>"
export ARM_CLIENT_SECRET="<your-client-secret>"
export ARM_SUBSCRIPTION_ID="<your-subscription-id>"
export ARM_TENANT_ID="<your-tenant-id>"
```

### 3. Initialize Terraform

Before using Terraform, initialize the working directory containing your Terraform configuration:

```bash
terraform init
```

### 4. Define Input Variables

Create a `terraform.tfvars` file to specify required variables:

```hcl
location            = "East US"
resource_group_name = "my-resource-group"
nic_name            = "my-nic"
subnet_id           = "<your-subnet-id>"
virtual_machine_name = "my-vm"
vm_size             = "Standard_F2"
admin_username      = "adminuser"
admin_password      = "Password123!"
storage_account_type = "Standard_LRS"
private_ip_allocation = "Static"
private_ip_address  = "10.0.0.4"
```

### 5. Plan the deployment

Before applying your configuration, you can review the changes Terraform will make:

```bash
terraform plan
```

### 6. Apply the configuration

To create the resources defined in the configuration files:

```bash
terraform apply
```

You will be prompted to confirm the actions. Type `yes` to proceed.

### 7. Destroy the resources

To destroy the resources created by Terraform:

```bash
terraform destroy
```

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

---

## Contributing

We welcome contributions to this project! To contribute:

1. Fork this repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-name`).
6. Create a new Pull Request.

Please ensure all contributions follow the [code of conduct](CODE_OF_CONDUCT.md).

---

### License Information

The project is licensed under the **GPLv3 License**, which allows for free use, modification, and distribution of the code, with the condition that any derivative works also be distributed under the GPLv3 License.

For more information about the GPLv3 License, visit the [GPLv3 License page](https://www.gnu.org/licenses/gpl-3.0.html).

---

## Note

This is a module if use Data blocks and Provider if deploying directly from this or import as Module in your terraform Code.

---

## Author
**Manashvee**  
GitHub: [Manashvee03](https://github.com/Manashvee03)
