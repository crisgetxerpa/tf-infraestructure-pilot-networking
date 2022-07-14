## provider
variable "region" {}

## tags
variable "project" {}
variable "environment" {}
variable "createdBy" {}
variable "description" {}

## subnets & vpc
variable "ip_prefix" {}
variable "private_subnet_app1" {}
variable "private_subnet_db1" {}
variable "public_subnet_ip1" {}
variable "public_subnet_ip2" {}
