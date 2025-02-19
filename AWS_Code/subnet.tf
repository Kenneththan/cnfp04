# Create Subnet
resource "aws_subnet" "sg_subnet_1" {
  vpc_id                  = aws_vpc.SG_vpc1.id
  cidr_block              = "172.0.0.0/20"
  availability_zone       = "ap-southeast-1a" # Change as needed
  map_public_ip_on_launch = true              # Set to true for public subnet

  tags = {
    Name = "sg_subnet_1"
  }
}
resource "aws_subnet" "sg_subnet_2" {
  vpc_id                  = aws_vpc.SG_vpc1.id
  cidr_block              = "172.0.16.0/20"
  availability_zone       = "ap-southeast-1b" # Change as needed
  map_public_ip_on_launch = true              # Set to true for public subnet

  tags = {
    Name = "sg_subnet_2"
  }
}