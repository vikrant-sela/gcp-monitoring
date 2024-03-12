output "uptime_check_ids" {
  value = keys({for uptimecheck in google_monitoring_uptime_check_config.uptime-check: uptimecheck.id => uptimecheck.*.id})
}