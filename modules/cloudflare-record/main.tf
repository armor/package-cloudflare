# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PROVISION A CLOUDFLARE RECORD
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

terraform {
  required_version = ">= 0.12"

  required_providers {
    cloudflare = {
      version = ">= 2.6"
    }
  }
}

resource "cloudflare_record" "record" {
  zone_id = var.zone_id
  name    = var.name
  value   = var.value
  type    = var.type
  ttl     = var.ttl
}
