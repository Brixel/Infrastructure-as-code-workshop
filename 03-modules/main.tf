provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~>2.20.0"
  features {}
}

resource "azurerm_resource_group" "weu" {
  name     = "rg-my-aci-test-group-weu"
  location = "West Europe"
}

resource "azurerm_resource_group" "neu" {
  name     = "rg-my-aci-test-group-neu"
  location = "North Europe"
}

module "aci_weu" {
  source   = "./modules/my-module"
  name     = "aci-MyAciGroup-weu"
  rg_name  = azurerm_resource_group.weu.name
  location = "West Europe"
}

module "aci_neu" {
  source   = "./modules/my-module"
  name     = "aci-MyAciGroup-neu"
  rg_name  = azurerm_resource_group.neu.name
  location = "North Europe"
}
