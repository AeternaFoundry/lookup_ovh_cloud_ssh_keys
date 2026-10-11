output "cloud_ssh_keys_lookup_service_name" {
  description = "Map of service_name values across all cloud_ssh_keys_lookup, keyed the same as var.cloud_ssh_keys_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_ssh_keys.cloud_ssh_keys_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_ssh_keys_lookup_ssh_keys" {
  description = "Map of ssh_keys values across all cloud_ssh_keys_lookup, keyed the same as var.cloud_ssh_keys_lookup except keys with no ssh_keys are omitted"
  value       = { for k, v in data.ovh_cloud_ssh_keys.cloud_ssh_keys_lookup : k => v.ssh_keys if v.ssh_keys != null && length(v.ssh_keys) > 0 }
}

