terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.76.0"
    }
  }
}


provider "azurerm" {
  features {}
}

variable "rgs" {


}

resource "azurerm_resource_group" "resource_group_raj" {
  for_each   = var.rgs
  
  
#   name       = "rg-nkorba"
#   location   = "West Europe"
#   managed_by = "Terraform"
# }
name=each.value.rg_name
location=each.value.location
}
