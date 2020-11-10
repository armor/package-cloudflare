# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PROVISION A CLOUDFLARE ZONE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

terraform {
  required_version = ">= 0.13"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 2.13.2"
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
    http3                       = var.http3
    ip_geolocation              = var.ip_geolocation
    ipv6                        = var.ipv6
    mirage                      = var.plan != "free" ? var.mirage : null
    opportunistic_encryption    = var.opportunistic_encryption
    opportunistic_onion         = var.opportunistic_onion
    origin_error_page_pass_thru = var.plan == "enterprise" ? var.origin_error_page_pass_thru : null
    prefetch_preload            = var.plan == "enterprise" ? var.prefetch_preload : null
    privacy_pass                = var.privacy_pass
    response_buffering          = var.plan == "enterprise" ? var.response_buffering : null
    rocket_loader               = var.rocket_loader
    server_side_exclude         = var.server_side_exclude
    sort_query_string_for_cache = var.plan == "enterprise" ? var.sort_query_string_for_cache : null
    tls_client_auth             = var.tls_client_auth
    true_client_ip_header       = var.plan == "enterprise" ? var.true_client_ip_header : null
    universal_ssl               = var.universal_ssl
    waf                         = var.plan != "free" ? var.waf : null
    webp                        = var.plan != "free" ? var.webp : null
    websockets                  = var.websockets
    zero_rtt                    = var.zero_rtt

    cache_level       = var.cache_level
    h2_prioritization = var.h2_prioritization
    image_resizing    = var.plan == "enterprise" || var.plan == "business" ? var.image_resizing : null
    min_tls_version   = var.min_tls_version
    polish            = var.plan != "free" ? var.polish : null
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
