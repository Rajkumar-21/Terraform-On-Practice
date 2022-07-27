terraform {
  required_version = ">=1.2.3"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.15.1"
    }
  }
}

provider "azurerm" {
    features {
      
    }
}

resource "azurerm_resource_group" "Raj-RG" {
  name = Raj-RG-1
  location = eastus
}
