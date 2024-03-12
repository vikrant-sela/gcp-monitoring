resource "google_monitoring_uptime_check_config" "uptime-check" {

  for_each = local.flat_hosts

  display_name = "${each.value.hostname}"
  timeout      = "60s"
  selected_regions = ["ASIA_PACIFIC", "USA", "EUROPE"]

  http_check {
    path         = each.value.path
    port         = "443"
    use_ssl      = true
    validate_ssl = true

    accepted_response_status_codes {
      status_class = "STATUS_CLASS_2XX"
    }
  }

  monitored_resource {
    type = "uptime_url"
    labels = {
      project_id = var.project_id
      host       = each.value.hostname
    }
  }

}
