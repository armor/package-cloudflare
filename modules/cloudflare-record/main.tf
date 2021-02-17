# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PROVISION A CLOUDFLARE RECORD
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

# Because the Cloudflare provider treats `value` and `data` as exclusive properties (even when either has a null value)
# we need to conditionally create these resources separately.

resource "cloudflare_record" "value_record" {
  count = var.data == null ? 1 : 0

  zone_id  = var.zone_id
  name     = var.name
  value    = var.value
  type     = var.type
  ttl      = var.ttl
  priority = var.priority
  proxied  = var.proxied
}

resource "cloudflare_record" "data_record" {
  count = var.data != null ? 1 : 0

  zone_id  = var.zone_id
  name     = var.name
  data     = var.data
  type     = var.type
  ttl      = var.ttl
  priority = var.priority
  proxied  = var.proxied
}
