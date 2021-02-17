# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PROVISION A CLOUDFLARE PAGE RULE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

terraform {
  required_version = ">= 0.13"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.13"
    }
  }
}

resource "cloudflare_page_rule" "rule" {
  zone_id  = var.zone_id
  target   = var.target
  priority = var.priority

  actions {
    bypass_cache_on_cookie = var.bypass_cache_on_cookie
    browser_cache_ttl      = var.browser_cache_ttl
    cache_on_cookie        = var.cache_on_cookie
    disable_apps           = var.disable_apps
    disable_performance    = var.disable_performance
    disable_railgun        = var.disable_railgun
    disable_security       = var.disable_security
    edge_cache_ttl         = var.edge_cache_ttl
    host_header_override   = var.host_header_override
    polish                 = var.polish
    resolve_override       = var.resolve_override
    security_level         = var.security_level
    ssl                    = var.ssl

    always_use_https            = var.always_use_https == null ? null : var.always_use_https == true ? "on" : "off"
    cache_level                 = var.cache_level == null ? null : var.cache_level == true ? "on" : "off"
    automatic_https_rewrites    = var.automatic_https_rewrites == null ? null : var.automatic_https_rewrites == true ? "on" : "off"
    always_online               = var.always_online == null ? null : var.always_online == true ? "on" : "off"
    browser_check               = var.browser_check == null ? null : var.browser_check == true ? "on" : "off"
    cache_by_device_type        = var.cache_by_device_type == null ? null : var.cache_by_device_type == true ? "on" : "off"
    cache_deception_armor       = var.cache_deception_armor == null ? null : var.cache_deception_armor == true ? "on" : "off"
    email_obfuscation           = var.email_obfuscation == null ? null : var.email_obfuscation == true ? "on" : "off"
    explicit_cache_control      = var.explicit_cache_control == null ? null : var.explicit_cache_control == true ? "on" : "off"
    ip_geolocation              = var.ip_geolocation == null ? null : var.ip_geolocation == true ? "on" : "off"
    mirage                      = var.mirage == null ? null : var.mirage == true ? "on" : "off"
    opportunistic_encryption    = var.opportunistic_encryption == null ? null : var.opportunistic_encryption == true ? "on" : "off"
    origin_error_page_pass_thru = var.origin_error_page_pass_through == null ? null : var.origin_error_page_pass_through == true ? "on" : "off"
    respect_strong_etag         = var.respect_strong_etag == null ? null : var.respect_strong_etag == true ? "on" : "off"
    response_buffering          = var.response_buffering == null ? null : var.response_buffering == true ? "on" : "off"
    rocket_loader               = var.rocket_loader == null ? null : var.rocket_loader == true ? "on" : "off"
    server_side_exclude         = var.server_side_exclude == null ? null : var.server_side_exclude == true ? "on" : "off"
    sort_query_string_for_cache = var.sort_query_string_for_cache == null ? null : var.sort_query_string_for_cache == true ? "on" : "off"
    true_client_ip_header       = var.true_client_ip_header == null ? null : var.true_client_ip_header == true ? "on" : "off"
    waf                         = var.waf == null ? null : var.waf == true ? "on" : "off"

    dynamic "forwarding_url" {
      for_each = var.forwarding_url == null ? [] : [1]
      content {
        url         = var.forwarding_url
        status_code = var.forwarding_status_code
      }
    }

    dynamic "minify" {
      for_each = var.minify_html == null && var.minify_css == null && var.minify_js == null ? [] : [1]
      content {
        html = var.minify_html == true ? "on" : "off"
        css  = var.minify_css == true ? "on" : "off"
        js   = var.minify_js == true ? "on" : "off"
      }
    }

  }
}
