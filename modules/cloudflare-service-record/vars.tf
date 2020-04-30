# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "zone_id" {
  description = "The ID of the zone in which this record will be provisioned."
  type        = string
}

variable "name" {
  description = "The name (or key) of the DNS record. Use `@` for the root zone."
  type        = string
}

variable "type" {
  description = "The type of DNS record being created."
  type        = string
}

variable "ttl" {
  description = "The TTL specification (in seconds) of the DNS record being created. A value of `1` indicates `automatic`."
  type        = number
  default     = 1
}

variable "service_type" {
  description = "The type of service record being created (e.g. `_sip`)."
  type        = string
}

variable "service_protocol" {
  description = "The protocol type for the service (e.g. `_tls`)."
  type        = string
}

variable "service_name" {
  description = "The name of the service for which the record is being created."
  type        = string
}

variable "service_priority" {
  description = "The priority of the service record."
  type        = number
}

variable "service_weight" {
  description = "The weight of the service record."
  type        = number
}

variable "service_port" {
  description = "The port over which the service operates."
  type        = number
}

variable "service_target" {
  description = "The target or scope of the service (typically another FQDN)."
  type        = string
}
