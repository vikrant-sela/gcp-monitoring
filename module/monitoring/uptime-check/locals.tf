locals {
  flat_hosts = {
    for host in var.uptime_hosts :
    host.hostname => host
  }
}
