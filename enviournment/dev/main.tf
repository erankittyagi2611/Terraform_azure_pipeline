module "RG" {
  source                  = "../../module/azurerm_resource_group"
    rg = var.regrp
}



module "VNAT" {
  source       = "../../module/azurerm_virtual_network"
vnet = var.vnet_info
}

module"SUBNET"{
    source = "../../module/azurerm_subnet"
    subnet = var.subnet_info
}

module"PIP"{
    source = "../../module/azurerm_public_ip"
    pip = var.pip_info
}