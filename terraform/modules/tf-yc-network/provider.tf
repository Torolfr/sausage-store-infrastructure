provider "yandex" {
  token     = var.token
  cloud_id  = var.network_cloud_id
  folder_id = var.network_folder_id
  zone      = var.network_zone
}
