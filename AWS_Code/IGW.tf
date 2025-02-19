resource "aws_internet_gateway" "SG_IGW" {
  vpc_id = aws_vpc.SG_vpc1.id

  tags = {
    Name = "SG_IGW"
  }
}
