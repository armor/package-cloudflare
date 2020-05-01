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

variable "value" {
  description = "The value of the DNS record."
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

variable "priority" {
  description = "The priority of the DNS record being created."
  type        = number
  default     = null
}

variable "proxied" {
  description = "Whether the record gets Cloudflare's origin protection."
  type        = bool
  default     = false
}
