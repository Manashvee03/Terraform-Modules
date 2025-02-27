
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

variable "computer_name" {
  description = "The computer name (hostname) to assign to the virtual machine"
  type        = string
}

variable "secure_boot_enabled" {
  description = "Specifies if Secure Boot and Trusted Launch are enabled for the virtual machine"
  type        = bool
  default     = true
}

# Optional: The IP address allocation for the NIC, either 'Static' or 'Dynamic'
variable "private_ip_allocation" {
  description = "The IP address allocation for the NIC. Can be 'Dynamic' or 'Static'."
  type        = string
  default     = "Dynamic"
}

# Optional: The static private IP address if the IP allocation type is 'Static'
variable "private_ip_address" {
  description = "The private IP address for the NIC if allocation is 'Static'."
  type        = string
  default     = ""
}

variable "identity_type" {
  description = "The type of the identity used for the virtual machine (e.g., UserAssigned)"
  type        = string
  default     = "UserAssigned"
}

variable "identity_ids" {
  description = "A list of User Assigned identity IDs to be assigned to the virtual machine"
  type        = list(string)
  default     = []
}

variable "image_publisher" {
  description = "The publisher of the source image for the virtual machine (e.g., 'MicrosoftWindowsServer')"
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "image_offer" {
  description = "The offer (product) of the source image for the virtual machine (e.g., 'WindowsServer')"
  type        = string
  default     = "WindowsServer"
}

variable "sku" {
  description = "The SKU (version) of the source image for the virtual machine (e.g., '2016-Datacenter')"
  type        = string
}

variable "image_version" {
  description = "The version of the source image for the virtual machine (e.g., 'latest')"
  type        = string
  default     = "latest"
}