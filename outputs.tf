# output "static_ip_addresses" {
#   description = "List of static external IP-addresses aligned to VMs"
#   value = [
#     for vm in yandex_compute_instance.this : vm.network_interface[0].nat_ip_address
#   ]
# }

output "debug_cluster" {
  value = yandex_kubernetes_cluster.this
}

# output "debug_cluster_host_and_id" {
#   value = [yandex_kubernetes_cluster.this.external_v4_address, yandex_kubernetes_cluster.this.id]
# }
