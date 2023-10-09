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
  count    = length(var.resource_group_names)
  name     = var.resource_group_names[count.index]
  location = var.location
}

resource "azurerm_dns_zone" "dnszone" {
  count               = length(var.dns_zone_names)
  name                = var.dns_zone_names[count.index]
  resource_group_name = azurerm_resource_group.rg[count.index].name
}

resource "azurerm_network_security_group" "nsgrule" {
  count               = length(var.resource_group_names)
  name                = "azsurenetworksecurityrules"
  resource_group_name = azurerm_resource_group.rg[count.index].name
  location            = var.location

  dynamic "security_rule" {
    iterator = rule
    for_each = var.networkrule
    content {
      name                       = rule.value.name
      priority                   = rule.value.priority
      direction                  = rule.value.direction
      access                     = rule.value.access
      protocol                   = rule.value.protocol
      source_port_range          = rule.value.source_port_range
      destination_port_range     = rule.value.destination_port_range
      source_address_prefix      = rule.value.source_address_prefix
      destination_address_prefix = rule.value.destination_address_prefix
    }

  }
  tags = {
    environment = "dev"
  }
}
