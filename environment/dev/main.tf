provider "google" {
  project = var.project_id
  region  = var.region
}

#VPC
module "dev_vpc" {
  source = "../../module/network/vpc"
  vpc_name = var.vpc_name

}

#SUBNET
module "dev_vpc_subnet" {
  source = "../../module/network/subnet"
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
  subnet_region = var.subnet_region
  subnet_vpc = module.dev_vpc.vpc_id
}

#VM
module "flask_app_vm" {
  source = "../../module/compute/vm"
  vm_project_id = var.project_id
  vm_name = var.flask_app_vm_name
  vm_machine_type = var.flask_app_vm_machine_type
  vm_disk_name = var.flask_app_vm_disk_name
  vm_disk_image = var.flask_app_vm_disk_image
  vm_disk_size = var.flask_app_vm_disk_size
  vm_disk_type = var.flask_app_vm_disk_type
  vm_mode = var.flask_app_vm_mode
  vm_vpc_name = module.dev_vpc.vpc_name
  vm_subnet_name = module.dev_vpc_subnet.subnet_name
  vm_region = var.flask_app_region
  vm_region_or_zone_name = var.flask_app_region_or_zone_name
  vm_network_ip = var.flask_app_vm_network_ip
  vm_network_tags = var.flask_app_vm_network_tags
  vm_labels = var.flask_app_vm_labels
  vm_startup_script = var.flask_app_vm_startup_script
}

#FIREWALL RULE FOR VM APP

module "flask_app_firewall_rule" {
  source = "../../module/network/firewall"
  firewall_name = var.flask_app_firewall_name
  firewall_direction = var.flask_app_firewall_direction
  firewall_ports = var.flask_app_firewall_ports
  firewall_network = module.dev_vpc.vpc_name
  firewall_protocol = var.flask_app_firewall_protocol
  firewall_target_tags = var.flask_app_firewall_tags
  firewall_source_ranges = var.flask_app_firewall_source_range
}