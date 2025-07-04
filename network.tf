resource "yandex_vpc_network" "this" {
  name = "default-network"
}

resource "yandex_vpc_subnet" "this" {
  name           = "default-subnet"
  zone           = var.zone
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = ["10.0.0.0/24"]
}
