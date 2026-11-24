variable "application_lookup" {
  description = <<EOT
Map of application_lookup, attributes below
Optional:
    - app_container_id
    - name
EOT

  type = map(object({
    app_container_id = optional(string)
    name             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_lookup : (
        v.name == null || (length(v.name) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_lookup : (
        v.app_container_id == null || (length(v.app_container_id) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
}

