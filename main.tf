terraform {
  backend "azurerm" {
    storage_account_name  = "${var.storage_account_name}"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
	version = "=1.30.1"
}
module "nginx" {
  source = "./modules/test"
  admin_user = "${var.admin_user}"
  resource_group = azurerm_resource_group.default
  virtual_network = azurerm_virtual_network.default
}

resource "azurerm_resource_group" "default" {
  name     = "${var.group_name}"
  location = "uksouth"
}

resource "azurerm_virtual_network" "default" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurerm_resource_group.default.location}"
  resource_group_name = "${azurerm_resource_group.default.name}"
}



