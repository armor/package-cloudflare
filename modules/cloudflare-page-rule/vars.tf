# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "zone_id" {
  description = "The ID of the zone in which this record will be provisioned."
  type        = string
}

variable "target" {
  description = "The URL pattern to target with the page rule."
  type        = string
}

variable "priority" {
  description = "The priority of the page rule among others for this target. The higher the number the higher the priority."
  type        = number
}

variable "always_use_https" {
  description = "Whether or not matching pages should always use HTTPS. This setting cannot be combined with other settings in the same rule."
  type        = bool
  default     = null
}

variable "cache_level" {
  description = "Whether to set the cache level to `bypass`, `basic`, `simplified`, `aggressive`, or `cache_everything`."
  type        = string
  default     = null
}

variable "bypass_cache_on_cookie" {
  description = "The name of the cookie that, when present, bypasses the Cloudflare cache and retrieves the resource from the origin."
  type        = string
  default     = null
}

variable "browser_cache_ttl" {
  description = "The TTL for the browser cache. `0` means 'Respect Existing Headers'."
  type        = number
  default     = null
}

variable "automatic_https_rewrites" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "always_online" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "browser_check" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "cache_by_device_type" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "cache_deception_armor" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "cache_on_cookie" {
  description = "The name of the cookie that, when present, causes the page to be cached."
  type        = string
  default     = null
}

variable "disable_apps" {
  description = "Whether or not to disable applications for matching URLs."
  type        = bool
  default     = false
}

variable "disable_performance" {
  description = "Whether or not to disable performance features for matching URLs."
  type        = bool
  default     = false
}

variable "disable_railgun" {
  description = "Whether or not to disable railgun for matching URLs."
  type        = bool
  default     = false
}

variable "disable_security" {
  description = "Whether or not to disable security features for matching URLs."
  type        = bool
  default     = false
}

variable "edge_cache_ttl" {
  description = "The TTL to apply at the edge."
  type        = number
  default     = null
}

variable "email_obfuscation" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "explicit_cache_control" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "forwarding_url" {
  description = "The URL to which traffic should be forwarded (including positional RegExp match merge markers). When this is specified you must also specify the `forwarding_status_code` variable. Forwarding cannot be used with other actions."
  type        = string
  default     = null
}

variable "forwarding_status_code" {
  description = "The status code to use when traffic is redirected. When this is specified you must also specify the `forwarding_url` variable. Forwarding cannot be used with other actions."
  type        = number
  default     = null
}

variable "host_header_override" {
  description = "The value of the host header to send."
  type        = string
  default     = null
}

variable "ip_geolocation" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "minify_html" {
  description = "Whether or not returned HTML should be automatically minified."
  type        = bool
  default     = false
}

variable "minify_css" {
  description = "Whether or not returned CSS should be automatically minified."
  type        = bool
  default     = false
}

variable "minify_js" {
  description = "Whether or not returned JavaScript should be automatically minified."
  type        = bool
  default     = false
}

variable "mirage" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = false
}

variable "opportunistic_encryption" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = false
}

variable "origin_error_page_pass_through" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = false
}

variable "polish" {
  description = "Setting for streaming features. One of `off`, `lossless`, or `lossy`."
  type        = string
  default     = null
}

variable "resolve_override" {
  description = "Overridden origin server name."
  type        = string
  default     = null
}

variable "respect_strong_etag" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "response_buffering" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "rocket_loader" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "security_level" {
  description = "Setting for security level. One of `off`, `essentially_off`, `low`, `medium`, `high`, or `under_attack`."
  type        = string
  default     = null
}

variable "server_side_exclude" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "smart_errors" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "sort_query_string_for_cache" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "ssl" {
  description = "Setting fo SSL/TLS. One of `off`, `flexible`, `full`, `strict` or `origin_pull`."
  type        = string
  default     = null
}

variable "true_client_ip_header" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}

variable "waf" {
  description = "Whether or not this action is enabled."
  type        = bool
  default     = null
}
