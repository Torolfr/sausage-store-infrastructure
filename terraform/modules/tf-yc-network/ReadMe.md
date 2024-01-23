# yandex_compute_network module

## Purpose

This module for Yandex Cloud network.

## Description

This module connects to Yandex Cloud and get data-list of cloud's subnets.
You can output them in root module, or use it as array of subnets in other modules

## Dependencies

yandex provider version = ">= 0.105.0"
terraform_version = ">= 1.6.6"

## Usage Instructions

Copy into your Terraform configuration /modules/tf-yc-network. Define your parameters in variables.tf.
And then run `terraform init`:

## Inputs

variables must be set in root module
Example:
```
module "yandex_compute_network" {
  source = "./modules/tf-yc-network"
  token = var.token
  network_cloud_id = var.cloud_id
  network_folder_id = var.folder_id
  network_zone = var.zone
}
```