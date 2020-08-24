output "ip" {
  value = azurerm_container_group.example.ip_address
}

output "fqdn" {
  value = azurerm_container_group.example.fqdn
}
