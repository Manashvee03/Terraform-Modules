variable "location" {
  type        = string
  description = "The Azure region where the Route Table will be deployed."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the Route Table."
}

variable "route_table_name" {
  type        = string
  description = "The name of the Route Table to be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group where the Route Table will be created."
}

variable "bgp_route_propagation_enabled" {
  type        = bool
  default     = true
  description = "Enables or disables BGP route propagation for the Route Table. Default is true."
}

variable "rt_associate" {
  type        = bool
  description = "Indicates whether the Route Table should be associated with a subnet. Set to true to associate."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the Route Table should be associated. Required if rt_associate is true."
  default     = ""
}