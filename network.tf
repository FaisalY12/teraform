
resource "azurerm_subnet" "frontsub" {
  name                 = "frontnet"
  resource_group_name  = "${azurerm_resource_group.default.name}"
  virtual_network_name = "${azurerm_virtual_network.default.name}"
  address_prefix       = "10.0.1.0/24"
}
resource "azurerm_subnet" "managesub" {
  name                 = "managenet"
  resource_group_name  = "${azurerm_resource_group.default.name}"
  virtual_network_name = "${azurerm_virtual_network.default.name}"
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_subnet" "backsub" {
  name                 = "backet"
  resource_group_name  = "${azurerm_resource_group.default.name}"
  virtual_network_name = "${azurerm_virtual_network.default.name}"
  address_prefix       = "10.0.3.0/24"
}




