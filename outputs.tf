output "application_lookup_id" {
  description = "Map of id values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.id }
}
output "application_lookup_app_container_id" {
  description = "Map of app_container_id values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.app_container_id }
}
output "application_lookup_environment_group_ids" {
  description = "Map of environment_group_ids values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.environment_group_ids }
}
output "application_lookup_environment_group_ids_names" {
  description = "Map of environment_group_ids_names values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.environment_group_ids_names }
}
output "application_lookup_environment_ids" {
  description = "Map of environment_ids values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.environment_ids }
}
output "application_lookup_environment_ids_names" {
  description = "Map of environment_ids_names values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.environment_ids_names }
}
output "application_lookup_name" {
  description = "Map of name values across all application_lookup, keyed the same as var.application_lookup"
  value       = { for k, v in data.britive_application.application_lookup : k => v.name }
}

