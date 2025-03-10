
resource "azurerm_route_table" "rt" {
  name                = var.route_table_name
  location            = var.location
  resource_group_name = var.resource_group_name
  bgp_route_propagation_enabled = var.bgp_route_propagation_enabled
  tags = var.tags
}

resource "azurerm_subnet_route_table_association" "rt_association" {
  count = var.rt_associate ? 1 : 0
  subnet_id      = var.subnet_id
  route_table_id = azurerm_route_table.rt.id
}