resource "azurerm_network_interface" "nicsunday1" {
  name                = "linuxnic"
  location            = "west europe"
  resource_group_name = "sunday-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/45083284-f7af-4815-9eb4-6e7fab197785/resourceGroups/sunday-rg/providers/Microsoft.Network/virtualNetworks/linuxvnet/subnets/linuxsubnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = "/subscriptions/45083284-f7af-4815-9eb4-6e7fab197785/resourceGroups/sunday-rg/providers/Microsoft.Network/publicIPAddresses/sundaypubliciplinux"
  }
}

resource "azurerm_linux_virtual_machine" "vmlinux" {
  name                = "linuxvm"
  resource_group_name = "sunday-rg"
  location            = "west europe"
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.nicsunday1.id,
  ]

 admin_password = "Alwaysandforever0402@"
 disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}