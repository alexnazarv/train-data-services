variable "zone" {
  description = "Yandex Cloud availability zone"
  type        = string
  default     = "ru-central1-b"
}

variable "cloud_id" {
  description = "Yandex Cloud id"
  type        = string
}

variable "folder_id" {
  description = "Yandex Cloud folder id"
  type        = string
}

variable "mac_air_alex_sa" {
  type = string
  
}

# variable "vm_count" {
#   description = "Count of VMs"
#   type        = number
#   default     = 3
# }

# variable "static_ip_count" {
#   description = "Number of static IPs"
#   type        = number
#   default     = 3
# }
