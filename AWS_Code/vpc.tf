# Create a VPC
resource "aws_vpc" "SG_vpc1" {
  cidr_block       = "172.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "SG_vpc1"
  }
}