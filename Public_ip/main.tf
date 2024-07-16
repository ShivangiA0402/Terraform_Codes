resource "azurerm_public_ip" "publicipsunday" {
  for_each = var.publicipsunday
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"
  sku = "Standard"
}