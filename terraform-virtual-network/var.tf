
variable "location" {
  type        = string
  description = "The Azure region where the Virtual Network will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group where the Virtual Network will be created."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network (VNet) to be created."
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the Virtual Network. You can supply multiple address ranges."
}

variable "private_endpoint_vnet_policies" {
  type        = string
  description = "The Private Endpoint VNet Policies for the Virtual Network. Possible values are Disabled and Basic."
  default = "Disabled"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the Virtual Network."
}
