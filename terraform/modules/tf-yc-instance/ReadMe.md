# yandex_compute_instance module

## Purpose

This module creates Yandex Cloud instance.

## Description

This module connects to Yandex Cloud and creates instance(VM) with specified parameters.

## Dependencies

yandex provider version = ">= 0.105.0"
terraform_version = ">= 1.6.6"

## Usage Instructions

Copy into your Terraform configuration /modules/tf-yc-instance. Define your parameters in variables.tf.
And then run `terraform init`:

To add users in new VM create users.yaml file in main module directory with the contents:
also you can change this file name or location with variable "users_file"
```
#cloud-config
users:
  - name: <username>
    primary_group: <Main user group>
    groups: sudo
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    ssh_authorized_keys:
      - ssh-rsa AAAAB3Nza...= torolfr@GL62MVR
```
## Inputs

variables must be set in root module
Example:
```
module "yandex_compute_instance" {
  source               = "./modules/tf-yc-instance"
  token                = var.token
  instance_cloud_id    = var.cloud_id
  instance_folder_id   = var.folder_id
  instance_zone        = var.zone
  instance_name        = var.vm_name
  instance_platform_id = var.platform_id
  instance_image_id    = var.image_id
  instance_disk_size   = "20"
  instance_nat         = "true"
  instance_subnet_id   = [
    for subnet in module.yandex_compute_network.yandex_vpc_subnets :
    subnet
    if subnet.zone == module.yandex_compute_instance.instance_zone
  ][0].subnet_id
}
```