# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PROVISION A CLOUDFLARE ZONE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

terraform {
  required_version = ">= 0.12"

  required_providers {
    azurerm = {
      version = ">= 2.0"
    }
  }
}

resource "cloudflare_zone" "zone" {
  zone       = var.zone
  paused     = var.paused
  plan       = var.plan
  type       = var.type
  jump_start = var.jump_start
}

resource "cloudflare_zone_settings_override" "settings" {
  zone_id = cloudflare_zone.zone.id

  settings {
    always_online               = var.always_online
    always_use_https            = var.always_use_https
    automatic_https_rewrites    = var.automatic_https_rewrites
    brotli                      = var.brotli
    browser_check               = var.browser_check
    development_mode            = var.development_mode
    email_obfuscation           = var.email_obfuscation
    hotlink_protection          = var.hotlink_protection
    http2                       = var.http2
    http3                       = var.http3
    ip_geolocation              = var.ip_geolocation
    ipv6                        = var.ipv6
    mirage                      = var.mirage
    opportunistic_encryption    = var.opportunistic_encryption
    opportunistic_onion         = var.opportunistic_onion
    origin_error_page_pass_thru = var.origin_error_page_pass_thru
    prefetch_preload            = var.prefetch_preload
    privacy_pass                = var.privacy_pass
    response_buffering          = var.response_buffering
    rocket_loader               = var.rocket_loader
    server_side_exclude         = var.server_side_exclude
    sort_query_string_for_cache = var.sort_query_string_for_cache
    tls_client_auth             = var.tls_client_auth
    true_client_ip_header       = var.true_client_ip_header
    waf                         = var.waf
    webp                        = var.webp
    websockets                  = var.websockets

    cache_level       = var.cache_level
    cname_flattening  = var.cname_flattening
    h2_prioritization = var.h2_prioritization
    image_resizing    = var.image_resizing
    min_tls_version   = var.min_tls_version
    polish            = var.polish
    pseudo_ipv4       = var.pseudo_ipv4
    security_level    = var.security_level
    ssl               = var.ssl
    tls_1_3           = var.tls_1_3

    browser_cache_ttl = var.browser_cache_ttl
    challenge_ttl     = var.challenge_ttl
    max_upload        = var.max_upload

    dynamic "minify" {
      for_each = var.minify_html == null && var.minify_css == null && var.minify_js == null ? [] : [1]
      content {
        html = var.minify_html == true ? "on" : "off"
        css  = var.minify_css == true ? "on" : "off"
        js   = var.minify_js == true ? "on" : "off"
      }
    }

    security_header {
      enabled            = var.security_headers_enabled
      preload            = var.preload_header
      max_age            = var.max_age_header
      nosniff            = var.nosniff_header
      include_subdomains = var.include_subdomains
    }
  }
}
