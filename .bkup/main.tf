terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    random = {
      version = "3.1.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  count = length(var.resource_group_names)
  name  = var.resource_group_names[count.index]
  location = var.location 
}

resource "azurerm_dns_zone" "dnszone" {
  count               = length(var.dns_zone_names)
  name                = var.dns_zone_names[count.index]
  resource_group_name = azurerm_resource_group.rg[count.index].name
}


