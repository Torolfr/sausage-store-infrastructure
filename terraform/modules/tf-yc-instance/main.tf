resource "yandex_compute_instance" "vm-1" {
  name        = var.instance_name
  platform_id = var.instance_platform_id
  zone        = var.instance_zone

  scheduling_policy {
    preemptible = var.instance_preemptible
  }

  resources {
    cores  = var.instance_core_count
    memory = var.instance_memory
  }

  boot_disk {
    initialize_params {
      type     = var.instance_disk_type
      size     = var.instance_disk_size
      image_id = var.instance_image_id
    }
  }

  network_interface {
    subnet_id = var.instance_subnet_id
    nat       = var.instance_nat
  }

  metadata = {
    user-data = fileexists("${var.users_file}") ? "${file("${var.users_file}")}" : null
  }
}
