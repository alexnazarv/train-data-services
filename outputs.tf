output "static_ip_addresses" {
  description = "List of static external IP-addresses aligned to VMs"
  value = [
    for vm in yandex_compute_instance.this : vm.network_interface[0].nat_ip_address
  ]
}

output "vm" {
  description = "VM info"
  value       = yandex_compute_instance.this[0]
}
