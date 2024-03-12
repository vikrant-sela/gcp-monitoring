variable "project_id" {}

variable "region" {
  default = "us-central1"
}

#VPC
variable "vpc_name" {}
# variable "vpc_id" {}

#SUBNET
variable "subnet_name" {}
variable "subnet_cidr" {}
variable "subnet_region" {}

#FLASK APP VM
variable flask_app_region {}
variable flask_app_region_or_zone_name{}
variable flask_app_vm_name {}
variable flask_app_vm_machine_type  {}
variable flask_app_vm_disk_name {}
variable flask_app_vm_disk_image  {}
variable flask_app_vm_disk_size  {}
variable flask_app_vm_disk_type  {}
variable flask_app_vm_mode  {}
variable flask_app_vm_network_ip {}
variable flask_app_vm_network_tags  {}
variable flask_app_vm_labels  {}
variable flask_app_vm_startup_script  {}

#FIREWALL
variable flask_app_firewall_name{}
variable flask_app_firewall_direction{}
variable flask_app_firewall_ports{}
variable flask_app_firewall_network{ default = ""}
variable flask_app_firewall_protocol{}
variable flask_app_firewall_tags{}
variable flask_app_firewall_source_range{}