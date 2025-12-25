module "network" {
  source      = "./modules/network"
  rg_name     = "rg-dev"
  location    = "centralindia"
  vnet_name   = "vnet-dev"
  subnet_name = "subnet-dev"
}

module "compute" {
  source    = "./modules/compute"
  rg_name   = module.network.rg_name
  location  = "centralindia"
  subnet_id = module.network.subnet_id
  vm_name   = "vm-dev"
}
