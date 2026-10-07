module "resource_group" {
  source = "./modules/resource-group"

  name     = "demo-network"
  location = "West US"
}

module "vnet" {
  source = "./modules/vnet"

  name                = "demo-vnet"
  location            = "West US"
  resource_group_name = module.resource_group.resource_group_name
  address_space       = ["10.0.0.0/16"]
}
