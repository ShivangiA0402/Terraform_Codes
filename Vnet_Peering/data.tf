data "azurerm_virtual_network" "windows" {
  name                = "windowsvnet"
  resource_group_name = "sunday-rg"
}
data "azurerm_virtual_network" "linux" {
  name                = "linuxvnet"
  resource_group_name = "sunday-rg"
}

