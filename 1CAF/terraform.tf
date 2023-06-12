terraform {
    required_version = ">= 1.0.0"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.0" 
        }
    }
    backend "azurerm" {
        resource_group_name   = "terraform-demo"
        storage_account_name  = "terraformdemoazure "
        container_name        = "tfstate"
        key                   = "terraform.tfstate"
  }
}