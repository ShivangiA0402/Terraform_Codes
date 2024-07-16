resource "azurerm_resource_group" "rgsunday" {
    for_each = var.rgsunday
  name     = each.value.name
  location = each.value.location
}