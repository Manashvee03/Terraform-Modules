
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "example" {
  name                = var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size #"Standard_F2"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type #"Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.sku #"2016-Datacenter"
    version   = "latest"
  }
#   Addtional available options
#   computer_name = "hostname" #Specifies the Hostname which should be used for this Virtual Machine
    # secure_boot_enabled = true #Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine
    # identity {
    #   type = "UserAssigned"
    #   identity_ids = [ "UserAssigned Resource ID" ]
    # }
}