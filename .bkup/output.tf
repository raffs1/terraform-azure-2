

output "resource_group_names" {
    value = [ for i in var.resource_group_names: (i)]
}

output "dns_zone_names" {
    value = [  for i in var.dns_zone_names: upper(i)]
}

output "tag_names" {
    value = [ for i in var.tags: (i)]
}
