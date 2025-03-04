
variable "subnet_name" {
  type        = string
  description = "The name of the subnet to be created within the Virtual Network."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group where the subnet will be created."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network (VNet) where the subnet will be deployed."
}

variable "address_prefixes" {
  type        = list(string)
  description = "The list of address prefixes for the subnet (e.g., 10.0.1.0/24)."
}

variable "private_endpoint_network_policies" {
  type        = string
  description = "Specifies whether private endpoint network policies are enabled or disabled. Possible values: 'Enabled' or 'Disabled'."
  default     = "Enabled"
}

variable "private_link_service_network_policies" {
  type        = bool
  description = "Specifies whether private link service network policies are enabled or disabled."
  default     = true
}

variable "default_outbound_access" {
  type        = bool
  description = "Specifies whether default outbound access is enabled or disabled."
  default     = true
}

variable "service_endpoints" {
  type        = list(string)
  description = "A list of service endpoints to associate with the subnet (e.g., ['Microsoft.Storage', 'Microsoft.Sql'])."
  default     = []
}

variable "subnet_delegations" {
  nullable = true
  type = any
  default = {}
  description = "Object of subnet delegations for the Azure Subnet."
  # example = {
  #   subnet_delegation_name  = "Microsoft.Container.Instance"
  #   service_delegation_name = "Microsoft.ContainerInstance/containerGroups"
  #   actions                = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
  # }
}