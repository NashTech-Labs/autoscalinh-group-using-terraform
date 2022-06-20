resource "aws_vpc" "my_vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.tenancy

  tags = {
    Name = "my_vpc"
  }
}

