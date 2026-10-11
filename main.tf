data "ovh_cloud_ssh_keys" "cloud_ssh_keys_lookup" {
  for_each = var.cloud_ssh_keys_lookup

  service_name = each.value.service_name
}

