module "rg" {
  source = "../../Modules/1.Resource_Group"
  rg     = var.rg
}
module "key_vault" {
  depends_on = [module.rg]
  source     = "../../Modules/2. Key_vault"
}
module "kv_secrets" {
  depends_on = [module.rg, module.key_vault]
  source     = "../../Modules/3. Key_vault_secrets"
  secrets    = var.secrets
}