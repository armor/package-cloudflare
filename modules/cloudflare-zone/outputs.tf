output "id" {
  value = cloudflare_zone.zone.id
}

output "plan" {
  value = cloudflare_zone.zone.plan
}

output "name_servers" {
  value = cloudflare_zone.zone.name_servers
}
