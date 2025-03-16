
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_servers = var.dns_servers
  ip_configuration {
    name                                         = var.ip_configuration_name
    subnet_id                                    = var.subnet_id
    private_ip_address_allocation                = var.private_ip_address_allocation
    private_ip_address_version                   = var.private_ip_address_version
    gateway_load_balancer_frontend_ip_configuration_id = var.gateway_load_balancer_frontend_ip_configuration_id

    # Conditionally set private IP address only if allocation is "Static"
    private_ip_address = var.private_ip_address_allocation == "Static" ? var.private_ip_address : null
  }
  tags = var.tags
}
