/*
    Variables definition.
*/

variable "location" {
  type        = string
  description = "Location of resource."
  default     = "brazilsouth"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "eventhubs_namespace_name" {
  type        = string
  description = "Name of the namespace."
}

variable "eventhub_name" {
  type        = string
  description = "Name of the the event hub."
}

variable "eventhub_throughput_unit" {
  type        = number
  description = "Number of TU to be used by Event Hub namespace."
  default     = 1
}

variable "eventhub_partition_count" {
  type        = number
  description = "Number of partition counts."
  default     = 1
}

variable "eventhub_message_retention" {
  type        = number
  description = "Number of days the message will be queued."
  default     = 1
}

variable "sku" {
  type        = string
  description = "SKU of the resource."
  default     = "Standard"
}
