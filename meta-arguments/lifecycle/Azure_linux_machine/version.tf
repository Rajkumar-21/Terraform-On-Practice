terraform {
  required_version = ">=1.2.3"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.22.0"
    }
    random = {
      source = "hashicorp/random"
      versionversion = ">=3.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
      }
}

resource "random_string" "myrandomname" {
  length = 7
  upper = false
  special = false
  number = false
}

