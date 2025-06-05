//
// Create a new Managed Kubernetes Node Group.
//
resource "yandex_kubernetes_node_group" "this" {
  cluster_id  = yandex_kubernetes_cluster.this.id
  name        = "data-services-node-group"
  description = "description"
  version     = "1.30"

  labels = {
    "key" = "train-data-services"
  }

  instance_template {
    platform_id = "standard-v2"

    network_interface {
      nat        = true
      subnet_ids = ["${yandex_vpc_subnet.this.id}"]
    }

    resources {
      memory = 8
      cores  = 2
      core_fraction = 50
    }

    boot_disk {
      type = "network-hdd"
      size = 64
    }

    scheduling_policy {
      preemptible = false
    }

    container_runtime {
      type = "containerd"
    }
  }

  scale_policy {
    auto_scale {
      min = 1
      initial = 1
      max = 3

    }
  }

  allocation_policy {
    location {
      zone = var.zone
    }
  }

  maintenance_policy {
    auto_upgrade = false
    auto_repair  = true
  }
}
