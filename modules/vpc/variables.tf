variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC."
}