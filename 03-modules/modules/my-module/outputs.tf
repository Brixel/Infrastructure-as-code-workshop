output "ip" {
  value = azurerm_container_group.my_aci.ip_address
}

output "fqdn" {
  value = azurerm_container_group.my_aci.fqdn
}
