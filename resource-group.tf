resource "azurerm_resource_group" "default" {
  name     = "${var.group_name}"
  location = "uksouth"
}
