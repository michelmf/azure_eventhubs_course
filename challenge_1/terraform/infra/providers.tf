/*
    Azure Event Hubs Challenge #1
    Providers declaration.
*/

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.31.0"
    }
  }
}

provider "azurerm" {
  features {
  }
}