rg = {
  "rg1" = {
    rg_name       = "testrg_1"
    rg_location   = "australiaeast"
    rg_managed_by = "testteam"
    rg_tags = {
      environment = "test"
      project     = "keyvault"
    }
  }
  "rg2" = {
    rg_name     = "testrg_2"
    rg_location = "australiasoutheast"

  }
}
secrets = {
  "secret1" = {
    secret_name         = "vmusername"
    secret_value        = "adminuser"
    kv_name             = "kvtodokv"
    resource_group_name = "testrg_1"
  }
  "secret2" = {
    secret_name         = "vmpassword"
    secret_value        = "P@ssw0rd1234!"
    kv_name             = "kvtodokv"
    resource_group_name = "testrg_1"
  }
}