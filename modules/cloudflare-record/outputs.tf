output "id" {
  value = cloudflare_record.record.id
}

output "hostname" {
  value = cloudflare_record.record.hostname
}

output "proxiable" {
  value = cloudflare_record.record.proxiable
}

output "created_on" {
  value = cloudflare_record.record.created_on
}

output "modified_on" {
  value = cloudflare_record.record.modified_on
}

output "metadata" {
  value = cloudflare_record.record.metadata
}
