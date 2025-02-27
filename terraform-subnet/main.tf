
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes

  private_endpoint_network_policies = var.private_endpoint_network_policies
  private_link_service_network_policies_enabled =  var.private_link_service_network_policies
  default_outbound_access_enabled =  var.default_outbound_access
  service_endpoints = var.service_endpoints

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}