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

data azurerm_network_security_group "nsg" {
  name = "jenkins-master-vagrantNSG"
  resource_group_name = "testing"
}

resource azurerm_network_security_rule "allowIn8080" {
  name                        = "allowIn8080"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8080"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "testing"
  network_security_group_name = data.azurerm_network_security_group.nsg.name
}