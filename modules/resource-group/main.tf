resource "azurerm_resource_group" "this" {
  resource_group_name     = var.resource_group_name
  location = var.location
}
