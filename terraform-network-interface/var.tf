variable "nic_name" {
  description = "Name of the network interface"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name where NIC will be created"
  type        = string
}

variable "dns_servers" {
  description = "List of DNS servers for the NIC"
  type        = list(string)
  default     = []
}

variable "ip_configuration_name" {
  description = "Name of the IP configuration"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the NIC will be attached"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "IP allocation method: Static or Dynamic"
  type        = string
  default     = "Dynamic"

  validation {
    condition     = contains(["Static", "Dynamic"], var.private_ip_address_allocation)
    error_message = "Allowed values are 'Static' or 'Dynamic'."
  }
}

variable "private_ip_address_version" {
  description = "IP version: IPv4 or IPv6"
  type        = string
  default     = "IPv4"
}

variable "private_ip_address" {
  description = "Static private IP address (only used if allocation is Static)"
  type        = string
  default     = null
}

variable "gateway_load_balancer_frontend_ip_configuration_id" {
  description = "Gateway load balancer frontend IP configuration ID"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to associate with the NIC"
  type        = map(string)
  default     = {}
}