resource "google_compute_instance" "vm" {
  name = var.vm_name
  project = var.vm_project_id
  machine_type = var.vm_machine_type
  zone = var.vm_region_or_zone_name
  tags = var.vm_network_tags
  metadata_startup_script = var.vm_startup_script

  boot_disk {
    auto_delete = true
    device_name = var.vm_name
    mode = var.vm_mode
    initialize_params {
      image = var.vm_disk_image
      labels = var.vm_labels
      size = var.vm_disk_size
      type = var.vm_disk_type
    }
  }
  
  network_interface {
    network = var.vm_vpc_name
    subnetwork = var.vm_subnet_name
    access_config {
      network_tier = "STANDARD"
    }
    network_ip = var.vm_network_ip
  }
}
