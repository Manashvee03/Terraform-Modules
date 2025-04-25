variable "nic_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "example-nsg"
}

variable "location" {
  description = "The Azure location where the NSG will be created"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the NSG"
  type        = string
  default     = "example-resource-group"
}

variable "tags" {
  description = "Tags to associate with the NSG"
  type        = map(string)
  default     = {
    environment = "dev"
    project     = "terraform-nsg"
  }
}

variable "sec_rules" {
  description = "List of security rules to apply to the NSG"
  type = list(object({
    name                       = string
    description                = string
    protocol                   = string     # "Tcp", "Udp", or "*"
    source_port_range          = string     # e.g., "*", "80", "1024-65535"
    source_address_prefix      = string     # e.g., "*", "10.0.0.0/24"
    destination_port_range     = string
    destination_address_prefix = string
    direction                  = string     # "Inbound" or "Outbound"
    access                     = string     # "Allow" or "Deny"
    priority                   = number     # Between 100 and 4096
  }))
  default = [
    {
      name                       = "allow-ssh"
      description                = "Allow SSH"
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
}
