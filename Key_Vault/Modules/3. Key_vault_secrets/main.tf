resource "azurerm_key_vault_secret" "kv_secrets" {
    for_each = var.secrets
  name         = each.value.secret_name
  value        = each.value.secret_value
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}
data "azurerm_key_vault" "kv" {
    for_each = var.secrets
  name                = each.value.kv_name
  resource_group_name = each.value.resource_group_name
}
