terraform {
  required_version = ">=1.2.3"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.22.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">=3.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
      }
}

resource "random_string" "myrandom" {
  length = 4
  upper = false
  numeric = false
  special = false
  
}