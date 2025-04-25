output "nsg_id" {
  description = "The ID of the created Network Interface"
  value       = azurerm_network_security_group.nsg.id
}