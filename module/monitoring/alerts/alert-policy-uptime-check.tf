resource "google_monitoring_alert_policy" "alert-policy-uptime-check" {
  project      = var.project_id
  enabled      = true
  count        = length(var.uptime_check_ids)
  display_name = "Uptime check alert policy for ${element(split("/", var.uptime_check_ids[count.index]), 3)}"
  
  documentation {
    content = "Uptime check failed for ${element(split("/", var.uptime_check_ids[count.index]), 3)}"
  }

  notification_channels = [var.notification_channel]
  combiner              = "OR"

  conditions {
    display_name = "Uptime check for ${element(split("/", var.uptime_check_ids[count.index]), 3)}"
    condition_threshold {
      filter = <<EOT
        metric.type="monitoring.googleapis.com/uptime_check/check_passed" AND metric.label.check_id="${element(split("/", var.uptime_check_ids[count.index]), 3)}" AND resource.type="uptime_url"
        AND metric.labels.checker_location = "apac-singapore"
      EOT

      duration        = "0s"
      threshold_value = "1"
      comparison      = "COMPARISON_GT"

      aggregations {
        alignment_period     = "1200s"
        cross_series_reducer = "REDUCE_COUNT_FALSE"
        per_series_aligner   = "ALIGN_NEXT_OLDER"
        group_by_fields = ["resource.label.project_id",
        "resource.label.host"]
      }

      trigger {
        count = "1"
      }
    }
  }

  user_labels = {
    severity = "critical"
  }

  alert_strategy {
    auto_close = "604800s"
  }
}
