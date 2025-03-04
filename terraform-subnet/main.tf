
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes

  private_endpoint_network_policies = var.private_endpoint_network_policies
  private_link_service_network_policies_enabled =  var.private_link_service_network_policies
  default_outbound_access_enabled =  var.default_outbound_access
  service_endpoints = var.service_endpoints

  dynamic "delegation" {
    for_each = var.subnet_delegations == {} ? [] : ["delegation"]
    content {
      name = var.subnet_delegations.subnet_delegation_name
      service_delegation {
        name    = var.subnet_delegations.service_delegation_name
        actions = var.subnet_delegations.actions
      }
    }
  }
}