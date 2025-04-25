terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "azurerm" {
    subscription_id = "7c08c6b0-62da-4c5d-9b2f-aa98aeb10f2e"
    tenant_id = "82867020-455c-4803-86b9-aa60a4339cb8"
    features {}
}

resource "azurerm_resource_group" "example" {
  name     = "examResourceGroupRG"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "examstorageaccountsa"
  resource_group_name       = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}
