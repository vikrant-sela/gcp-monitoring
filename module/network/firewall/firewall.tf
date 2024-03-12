resource "google_compute_firewall" "ssh" {
  name = var.firewall_name
  allow {
    ports    = var.firewall_ports
    protocol = var.firewall_protocol
  }
  direction     = var.firewall_direction
  network       = var.firewall_network
  priority      = var.firewall_priority
  source_ranges = var.firewall_source_ranges
  target_tags   = var.firewall_target_tags
}