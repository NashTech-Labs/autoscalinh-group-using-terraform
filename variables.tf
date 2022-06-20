variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC."
}

variable "subnet_cidr" {
  type        = list
  description = "Subnet Map"
}

variable "az" {
  type = list
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

