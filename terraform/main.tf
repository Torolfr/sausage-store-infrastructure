module "yandex_compute_instance" {
  source               = "./modules/tf-yc-instance"
  token                = var.token
  instance_cloud_id    = var.cloud_id
  instance_folder_id   = var.folder_id
  instance_zone        = var.zone
  instance_name        = "vm-sausage-store-std-024-29"
  instance_platform_id = "standard-v3"
  instance_image_id    = "fd87uq4tagjupcnm376a"
  instance_disk_type   = "network-ssd"
  instance_disk_size   = "20"
  instance_nat         = "true"
  instance_subnet_id = [
    for subnet in module.yandex_compute_network.yandex_vpc_subnets :
    subnet
    if subnet.zone == var.zone
  ][0].subnet_id
}

module "yandex_compute_network" {
  source            = "./modules/tf-yc-network"
  token             = var.token
  network_cloud_id  = var.cloud_id
  network_folder_id = var.folder_id
  network_zone      = var.zone
}
