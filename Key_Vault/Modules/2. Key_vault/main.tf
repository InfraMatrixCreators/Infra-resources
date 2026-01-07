data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "example" {
  name                       = "kvtodokv"
  location                   = "australiaeast"
  resource_group_name        = "testrg_1"
  enabled_for_disk_encryption = true
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = 90
    purge_protection_enabled   = false
    rbac_authorization_enabled = true
}
data "azuread_user" "jitender" {
  user_principal_name = "jitender@hcplkogmail.onmicrosoft.com"
}
resource "azurerm_role_assignment" "jitender_kv_admin" {
  scope                = azurerm_key_vault.example.id
  role_definition_name = "Key Vault Administrator"
  principal_id         = data.azuread_user.jitender.object_id
}
