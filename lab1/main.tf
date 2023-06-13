provider "azurerm" {

    features {
      
    }
  
}

resource "azurerm_resource_group" "rg" {

    name = var.rgname
    location = var.location
  
}

resource "azurerm_virtual_network" "vnet" {

    name = var.vnetName
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    address_space = var.address_space

    dynamic "subnet" {

        for_each = var.subnet
        iterator = item
        content {
          name = item.value.name
          address_prefix = item.value.address_prefix
        }
      
    }
  
}

