resource "azurerm_network_security_group" "nsg" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dynamic "security_rule" {
    for_each = var.sec_rules
    content {
      name                        = sec_rule.value.name
      description                 = sec_rule.value.description
      protocol                    = sec_rule.value.protocol
      source_port_range           = sec_rule.value.source_port_range
      source_address_prefix       = sec_rule.value.source_address_prefix
      destination_port_range      = sec_rule.value.destination_port_range
      destination_address_prefix  = sec_rule.value.destination_address_prefix
      direction                   = sec_rule.value.direction
      access                      = sec_rule.value.access
      priority                    = sec_rule.value.priority
    }
  }
  tags = var.tags
}
