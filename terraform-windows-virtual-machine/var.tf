
variable "location" {
  type = string
  description = "Region in which you want to deploy the resource"
}

variable "resource_group_name" {
  type = string
  description = "Resource Group name in which the Virtual Machine going to deploy"
}

variable "nic_name" {
  type = string
  description = "Name of the Network Interface Card which will be going to attach on the Virtual Machine"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID required so Private IP can be assign to the NIC Card of the Virtual Machine"
}

variable "virtual_machine_name" {
  type = string
  description = "Virtual Machine Name"
}

variable "vm_size" {
  type = string
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2"
}

variable "admin_password" {
  type = string
  description = "User Admin Password to access the Windows VM"
}

variable "admin_username" {
  type = string
  description = "UserName to access the Windows VM"
}

variable "storage_account_type" {
  type = string
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS"
}

variable "sku" {
  type = string
  description = "Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created."
}
