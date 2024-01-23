variable "network_zones" {
  description = "Yandex.Cloud network availability zones"
  type        = set(string)
  default     = (["ru-central1-a", "ru-central1-b", "ru-central1-c"])
  nullable    = false
}

variable "network_zone" {
  description = "Yandex.Cloud network availability zones"
  type        = string
}

variable "network_cloud_id" {
  description = "Yandex cloud_id"
  type        = string
}

variable "network_folder_id" {
  description = "Yandex folder_id"
  type        = string
}

variable "token" {
  description = "Yandex Cloud token"
  type        = string
}
