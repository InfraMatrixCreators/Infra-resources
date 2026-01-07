variable "rg" {
  type = map(object({
    rg_name       = string
    rg_location   = string
    rg_managed_by = optional(string)
    rg_tags       = optional(map(string))
  }))
}
variable "secrets" {
  type = map(object({
    secret_name         = string
    secret_value        = string
    kv_name             = string
    resource_group_name = string
  }))
}