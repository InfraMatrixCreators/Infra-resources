variable "rg" {
  type = map(object({
    rg_name = string
    rg_location = string
    rg_managed_by = optional(string)
    rg_tags = optional(map(string))
  }))
}