data "britive_application" "application_lookup" {
  for_each = var.application_lookup

  app_container_id = each.value.app_container_id
  name             = each.value.name
}

