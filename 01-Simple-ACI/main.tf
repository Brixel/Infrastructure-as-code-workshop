provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~>2.20.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-01-simple-aci"
  location = "West Europe"
}

resource "azurerm_container_group" "example" {
  name                = "aci-01-simple-aci"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.example.name
  ip_address_type     = "public"
  os_type             = "linux"
  dns_name_label      = "01-simple-aci"

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
