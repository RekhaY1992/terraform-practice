module "resource_group" {
  source = "../../modules/resource-group"

  name     = "demo-staging-rg"
  location = var.location
}

module "vnet" {
  source = "../../modules/vnet"

  name                = "demo-staging-vnet"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.address_space
}
