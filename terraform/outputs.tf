output "instance_ip_address" {
  value = module.yandex_compute_instance.instance_ip_address.0
}

output "instance_external_ip" {
  value = module.yandex_compute_instance.instance_external_ip.0
}

output "yandex_vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = module.yandex_compute_network.yandex_vpc_subnets
}
