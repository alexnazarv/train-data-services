# resource "yandex_compute_instance" "this" {
#   count       = var.vm_count
#   name        = "my-vm-${count.index}"
#   platform_id = "standard-v1"
#   zone        = var.zone

#   resources {
#     cores         = 2
#     core_fraction = 100
#     memory        = 6
#   }

#   boot_disk {
#     initialize_params {
#       image_id = "fd8bbhtvdodbbranefoe" # Ubuntu24.04 LTS
#       size     = 200
#       type     = "network-hdd"

#     }
#   }

#   network_interface {
#     subnet_id      = yandex_vpc_subnet.this.id
#     nat            = true
#     nat_ip_address = yandex_vpc_address.this[count.index].external_ipv4_address[0].address
#   }

#   metadata = {
#     ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
#   }
# }
