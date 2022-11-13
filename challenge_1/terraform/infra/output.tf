/*
    Output Information
*/

output "resource_group_name" {
  value = "Resource Group name: ${azurerm_resource_group.rg_challenge.name}"
}

output "eventhubs_namespace" {
  value = "Eventhubs Namespace name: ${azurerm_eventhub_namespace.evhn_challenge.name}"
}

output "eventhubs__namespace_throughput_unit" {
  value = "#Throughput Units: ${azurerm_eventhub_namespace.evhn_challenge.capacity}"
}

output "eventhubs_namespace_pricing_tier" {
  value = "SKU: ${azurerm_eventhub_namespace.evhn_challenge.sku}"
}

output "eventhubs_eventhub" {
  value = "Event hub name: ${azurerm_eventhub.eventhub.name}"
}
