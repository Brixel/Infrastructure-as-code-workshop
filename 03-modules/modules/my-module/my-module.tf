resource "azurerm_container_group" "my_aci" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  ip_address_type     = "public"
  os_type             = "linux"
  dns_name_label      = var.name

  container {
    name   = "hw"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port = 80
    }
  }

  container {
    name   = "sidecar"
    image  = "microsoft/aci-tutorial-sidecar"
    cpu    = "0.5"
    memory = "1.5"
  }

  tags = {
    environment = "testing"
  }
}
