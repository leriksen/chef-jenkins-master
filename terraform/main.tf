terraform {
  required_version = ">= 0.14"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }

  backend "local" {
    path = "tf.state"
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

