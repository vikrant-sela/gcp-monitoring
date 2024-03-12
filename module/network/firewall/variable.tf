variable "firewall_name" {
  default = ""
}

variable "firewall_ports" {
  default = []
}

variable "firewall_protocol" {
  default = ""
}

variable "firewall_direction" {
  default = "INGRESS"
}

variable "firewall_network" {
  default = ""
}

variable "firewall_priority" {
  default = 1000
}
variable "firewall_source_ranges" {
  default = ["10.0.1.0/32"]
}

variable "firewall_target_tags" {
  default = []
}
