variable "cloud_ssh_keys_lookup" {
  description = <<EOT
Map of cloud_ssh_keys_lookup, attributes below
Optional:
    - service_name
EOT

  type = map(object({
    service_name = optional(string)
  }))
}

