variable "project_id" {
  default = ""
}

variable "uptime_check_ids" {
  type = list(string)
  default = []
}

variable "notification_channel" {
  type = string
  default = ""
}