resource "azurerm_resource_group" "test_rg" {
    for_each = var.rg
    name     = each.value.rg_name
    location = each.value.rg_location
    managed_by = each.value.rg_managed_by
    tags = each.value.rg_tags
}
