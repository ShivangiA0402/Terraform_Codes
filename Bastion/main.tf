resource "azurerm_bastion_host" "bastionsunday" {
  name                = "sundaybastion"
  location            = "west europe"
  resource_group_name = "sunday-rg"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = "/subscriptions/45083284-f7af-4815-9eb4-6e7fab197785/resourceGroups/sunday-rg/providers/Microsoft.Network/virtualNetworks/windowsvnet/subnets/AzureBastionSubnet"
    public_ip_address_id = "/subscriptions/45083284-f7af-4815-9eb4-6e7fab197785/resourceGroups/sunday-rg/providers/Microsoft.Network/publicIPAddresses/sundaypublicip"
  }
}