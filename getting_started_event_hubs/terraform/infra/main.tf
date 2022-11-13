/*
    Azure Event Hubs Challenge #1
    Creating an Event Hubs NameSpace and hubs.
*/

resource "azurerm_resource_group" "rg_challenge" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_eventhub_namespace" "evhn_challenge" {
  name                = var.eventhubs_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.eventhub_throughput_unit
  sku                 = var.sku

  tags = {
    module = "Getting Started with Event Hubs"
  }
}

resource "azurerm_eventhub" "eventhub" {
  name                = var.eventhub_name
  namespace_name      = var.eventhubs_namespace_name
  resource_group_name = var.resource_group_name
  partition_count     = var.eventhub_partition_count
  message_retention   = var.eventhub_message_retention
}