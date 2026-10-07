resource "azurerm_virtual_network" "this" {
  name                = var.name
  location            = var.location
   name               = var.resource_group_name
  address_space       = var.address_space
}
