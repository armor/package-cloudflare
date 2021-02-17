output "id" {
  value = var.data == null ? cloudflare_record.value_record[0].id : cloudflare_record.data_record[0].id
}

output "hostname" {
  value = var.data == null ? cloudflare_record.value_record[0].hostname : cloudflare_record.data_record[0].hostname
}

output "proxiable" {
  value = var.data == null ? cloudflare_record.value_record[0].proxiable : cloudflare_record.data_record[0].proxiable
}

output "created_on" {
  value = var.data == null ? cloudflare_record.value_record[0].created_on : cloudflare_record.data_record[0].created_on
}

output "modified_on" {
  value = var.data == null ? cloudflare_record.value_record[0].modified_on : cloudflare_record.data_record[0].modified_on
}

output "metadata" {
  value = var.data == null ? cloudflare_record.value_record[0].metadata : cloudflare_record.data_record[0].metadata
}
