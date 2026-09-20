output "resource_group_name" {
  description = "Navnet på ressursgruppen som ble opprettet"
  value       = azurerm_resource_group.main.name
}

output "name_prefix" {
  description = "Navneprefikset alle ressursene dine deler"
  value       = local.name_prefix
}

output "my_ip" {
  description = "Den offentlige IP-adressen som ble tildelt VM-en"
  value       = azurerm_public_ip.main.ip_address
}