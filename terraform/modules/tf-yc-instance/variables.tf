variable "token" {
  description = "Yandex Cloud token"
  type        = string
}

variable "instance_cloud_id" {
  description = "Yandex cloud_id"
  type        = string
}

variable "instance_folder_id" {
  description = "Yandex folder_id"
  type        = string
}

variable "instance_zone" {
  description = "Yandex zone"
  type        = string
}

variable "instance_name" {
  description = "Yandex instance name of VM"
  type        = string
  default     = "std-VM-name-42"
}

variable "instance_platform_id" {
  description = "Yandex instance platform id"
  type        = string
  default     = "standard-v1"
}

variable "instance_preemptible" {
  description = "Yandex instance scheduling_policy"
  type        = bool
  default     = "true"
}

variable "instance_core_count" {
  description = "Yandex instance CPU core count"
  type        = string
  default     = "2"
}

variable "instance_memory" {
  description = "Yandex instance size of memory"
  type        = string
  default     = "2"
}

variable "instance_disk_type" {
  description = "Yandex instance disk type"
  type        = string
}

variable "instance_disk_size" {
  description = "Yandex instance boot disk size"
  type        = string
  default     = "30"
}

variable "instance_image_id" {
  description = "Yandex instance boot-image id"
  type        = string
}

variable "instance_subnet_id" {
  description = "Yandex instance subnet id for network"
  type        = string
}

variable "instance_nat" {
  description = "Yandex instance nat"
  type        = bool
  default     = "false"
}

variable "users_file" {
  description = "path to file with users for new instance"
  type        = string
  default     = "./users.yaml"
}
