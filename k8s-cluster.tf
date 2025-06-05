//
// Create a new Managed Kubernetes zonal Cluster.
//
resource "yandex_kubernetes_cluster" "this" {
  name        = "data-services"
  description = "training data services"

  network_id = yandex_vpc_network.this.id

  master {
    version = "1.30"
    zonal {
      zone      = yandex_vpc_subnet.this.zone
      subnet_id = yandex_vpc_subnet.this.id
    }

    public_ip = true

    maintenance_policy {
      auto_upgrade = true

      maintenance_window {
        start_time = "04:00"
        duration   = "3h"
      }
    }

    master_logging {
      enabled                    = false
    }
  }

  service_account_id      = var.mac_air_alex_sa # yandex_iam_service_account.this.id
  node_service_account_id = var.mac_air_alex_sa # yandex_iam_service_account.this.id

  labels = {
    my_key       = "train-data-services"
  }

  release_channel         = "RAPID"
  network_policy_provider = "CALICO"

  kms_provider {
    key_id = yandex_kms_symmetric_key.this.id
  }
}
