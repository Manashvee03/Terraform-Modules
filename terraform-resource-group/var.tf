
variable "location" {
  type = string
  description = "Region in which you want to deploy the resource"
}

variable "resource_group_name" {
  type = string
  description = "Resource Group name in which the Virtual Machine going to deploy"
}

variable "tags" {
  type = map(string)
  description = "A mapping of tags which should be assigned to the Resource Group"
}
