terraform {
  required_version = ">=1.2.3"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.22.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  
}

