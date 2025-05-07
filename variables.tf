variable "zone" {
  description = "Yandex Cloud availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "vm_count" {
  description = "Count of VMs"
  type        = number
  default     = 3
}

variable "static_ip_count" {
  description = "Number of static IPs"
  type        = number
  default     = 3
}
