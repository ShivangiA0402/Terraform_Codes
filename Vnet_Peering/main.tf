resource "azurerm_virtual_network_peering" "windowstolinux" {
  name                      = "windowstolinux"
  resource_group_name       = "sunday-rg"
  virtual_network_name      = "windowsvnet"
  remote_virtual_network_id = data.azurerm_virtual_network.linux.id
}

resource "azurerm_virtual_network_peering" "linuxtowindows" {
  name                      = "linuxtowindows"
  resource_group_name       = "sunday-rg"
  virtual_network_name      = "linuxvnet"
  remote_virtual_network_id = data.azurerm_virtual_network.windows.id
}