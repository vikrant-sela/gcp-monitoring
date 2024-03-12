variable "uptime_hosts" {
  type = list(object({
    hostname = string
    path  = string
  }))
  default = []
}

variable "project_id" {
  default = ""
}

variable "uptime_check_ids" {
  type = list(string)
  default = []
}