variable "vpc_id" {}

variable "availability_zone" {}

variable "env" {}

variable "app_name" {}

variable "name" {}

variable "gateway_id" {}

variable "nat_instance_id" {}

variable "public_subnet_cidr" {}

variable "private_a_subnet_cidr" {}
variable "private_b_subnet_cidr" {}

variable "region_numbers" {
  default = {
    us-east-1 = 1
    us-west-1 = 2
    us-west-2 = 3
    eu-west-1 = 4
  }
}

variable "az_numbers" {
  default = {
    a = 1
    b = 2
    c = 3
    d = 4
    e = 5
    f = 6
    g = 7
    h = 8
    i = 9
    j = 10
    k = 11
    l = 12
    m = 13
    n = 14
  }
}

data "aws_availability_zone" "target" {
  name = "${var.availability_zone}"
}

data "aws_vpc" "target" {
  id = "${var.vpc_id}"
}

# SOA
variable "soa_network_address" {}
