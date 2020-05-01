# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "zone" {
  description = "The DNS zone name which will be added."
  type        = string
}

variable "paused" {
  description = "Whether or not this zone is paused (traffic bypasses Cloudflare)."
  type        = bool
  default     = false
}

variable "plan" {
  description = "The name of the commercial plan to apply to the zone. One of `free`, `pro`, `business`, or `enterprise`."
  type        = string
  default     = "free"
}

variable "type" {
  description = "Whether the zone is hosted (full) or delegated (partial). One of `full` or `partial`."
  type        = string
  default     = "full"
}

variable "jump_start" {
  description = "Whether or not to scan for DNS records upon creation. Ignored after zone is created."
  type        = bool
  default     = false
}

variable "always_online" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "always_use_https" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "automatic_https_rewrites" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "brotli" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "browser_check" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "development_mode" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "email_obfuscation" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "hotlink_protection" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "http3" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "ip_geolocation" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}
variable "ipv6" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "mirage" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "opportunistic_encryption" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "opportunistic_onion" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "origin_error_page_pass_thru" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "prefetch_preload" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "privacy_pass" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "response_buffering" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "rocket_loader" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "server_side_exclude" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "sort_query_string_for_cache" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "tls_client_auth" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "on"
}

variable "true_client_ip_header" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "waf" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "webp" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "websockets" {
  description = "Whether or not this feature is enabled."
  type        = string
  default     = "off"
}

variable "cache_level" {
  description = "Specify the cache level. One of `aggressive`, `basic`, or `simplified`."
  type        = string
  default     = "aggressive"
}

variable "h2_prioritization" {
  description = "Specify HTTP/2 prioritisation behaviour. One of `on`, `off`, or `custom`."
  type        = string
  default     = "off"
}

variable "image_resizing" {
  description = "Specify image resizing behaviour. One of `on`, `off`, or `open`."
  type        = string
  default     = "off"
}

variable "min_tls_version" {
  description = "Specify the minimum supported TLS version. One of `1.0`, `1.1`, `1.2`, or `1.3`."
  type        = string
  default     = "1.2"
}

variable "polish" {
  description = "Specify stream encoding behaviour. One of `off`, `lossless`, or `lossy`."
  type        = string
  default     = "off"
}

variable "pseudo_ipv4" {
  description = "Specify IPv4 interoperability settings. One of `off`, `add_header`, or `overwrite_header`."
  type        = string
  default     = "off"
}

variable "security_level" {
  description = "Specify the security level setting. One of `off`, `essentially_off`, `low`, `medium`, `high`, or `under_attack`."
  type        = string
  default     = "medium"
}

variable "ssl" {
  description = "Configure SSL settings. One of `off`, `flexible`, `full`, `strict,` or `origin_pull`."
  type        = string
  default     = "off"
}

variable "tls_1_3" {
  description = "Configure TLS 1.3 settings. One of `off`, `on`, or `zrt`."
  type        = string
  default     = "on"
}


variable "browser_cache_ttl" {
  description = "The TTL (in seconds) to allow browsers to cache content. `0` means 'Respect Existing Headers'."
  type        = number
  default     = 14400
}

variable "challenge_ttl" {
  description = "The amount of time (in seconds) a challenge response is valid."
  type        = number
  default     = 1800
}

variable "max_upload" {
  description = "The maximum upload size (in MB)."
  type        = number
  default     = 100
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

variable "security_headers_enabled" {
  description = "Whether or not security headers are enabled."
  type        = bool
  default     = false
}

variable "preload_header" {
  description = "Whether or not to append preload headers to responses."
  type        = bool
  default     = false
}

variable "max_age_header" {
  description = "Whether or not to append max_age headers to responses."
  type        = number
  default     = null
}

variable "include_subdomains" {
  description = "Whether or not to include subdomains when appending security headers."
  type        = bool
  default     = false
}

variable "nosniff_header" {
  description = "Whether or not to include nosniff headers to responses."
  type        = bool
  default     = false
}

variable "universal_ssl" {
  description = "Whether or not universal SSL is enabled. One of `on` or `off`."
  type        = string
  default     = "on"
}

variable "zero_rtt" {
  description = "Whether or not 0-RTT is enabled. One of `on` or `off`."
  type        = string
  default     = "off"
}
