variable "vm_region_or_zone_name" {
  default     = "us-central1-c"
}
variable "vm_region" {
  default     = "us-central1"
}
variable "vm_vpc_name" {
  default = ""
}
variable "vm_subnet_name" {
  default = ""
}
variable "vm_service_account_id" {
  default = ""
}
variable "vm_project_id" {
  default = ""
}
variable "vm_machine_type" {
  default = "f1-micro"
}
variable "vm_disk_name"{
 default = "vm-disk-1"
}
variable "vm_disk_type" {
  default = "pd-balanced"
}
variable "vm_disk_image" {
  default = "debian-cloud/debian-11"
}
variable "vm_name" {
  default = ""
}
variable "vm_mode" {
  default = "READ_WRITE"
}
variable "vm_disk_size" {
  default = "10"
}
variable "vm_labels" {
  default = {env = "dev"}
}
variable "vm_network_tags" {
  default = []
}
variable "vm_network_ip" {
  default = ""
}
variable "vm_startup_script" {
  default = ""
}