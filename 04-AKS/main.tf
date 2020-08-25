provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~>2.20.0"
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "rg-01-aks-workshop-weu"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = "aks-workshop01-weu"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "aks-workshop01-weu"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
