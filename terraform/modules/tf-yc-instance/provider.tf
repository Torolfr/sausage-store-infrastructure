provider "yandex" {
  token     = var.token
  cloud_id  = var.instance_cloud_id
  folder_id = var.instance_folder_id
  zone      = var.instance_zone
}
