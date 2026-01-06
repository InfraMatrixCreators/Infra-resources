terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "todo_app_rg"
    storage_account_name = "todostorage2026"
    container_name       = "testcontainer2026"
    key                  = "test.terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_deleted_keys_on_destroy = false
      recover_soft_deleted_keys          = true
    }
  }
  subscription_id = "92cdf4c5-f95e-485a-89fa-8bfdc07f1284"
}