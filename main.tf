module "resource_group" {
  source = "./modules/resource-group"

  name     = "demo-network"
  location = "East US"
}

module "vnet" {
  source = "./modules/vnet"

  name                = "demo-vnet"
  location            = "East US"
  resource_group_name = module.resource_group.name
  address_space       = ["10.0.0.0/16"]
}
