

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id hentes fra ARM_SUBSCRIPTION_ID
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location

  # Tagger gjør det enkelt å finne igjen egne ressurser i et delt abonnement
  tags = {
    student = var.student_id
    course  = "iac"
  }
}




# resource "azurerm_resource_group" "my_resource_group" {
#   name     = "my-resource-group"
#   location = "West Europe"

# }

# resource "azurerm_storage_account" "storage_oving_1" {
#  name = "storageoving1"
#  resource_group_name = azurerm_resource_group.my_resource_group.name
#  location = azurerm_resource_group.my_resource_group.location
#  account_tier= "Standard"
#  account_replication_type="LRS"

# }


