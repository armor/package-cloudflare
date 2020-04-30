output "id" {
  value = cloudflare_page_rule.rule.id
}

output "target" {
  value = cloudflare_page_rule.rule.target
}

output "actions" {
  value = cloudflare_page_rule.rule.actions
}

output "priority" {
  value = cloudflare_page_rule.rule.priority
}

output "status" {
  value = cloudflare_page_rule.rule.status
}
