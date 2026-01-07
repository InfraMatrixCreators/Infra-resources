variable "secrets" {
  type = map(object({
    secret_name = string
    secret_value = string 
    kv_name = string
    resource_group_name = string
  }))
}