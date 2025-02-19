resource "aws_route_table" "SG_Route_Table" {
  vpc_id = aws_vpc.SG_vpc1.id

  tags = {
    Name = "SG_Route_Table"
  }
}
resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.SG_Route_Table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.SG_IGW.id
}
#Association route tables with subnets
resource "aws_route_table_association" "subnet_association_1" {
  subnet_id      = aws_subnet.sg_subnet_1.id
  route_table_id = aws_route_table.SG_Route_Table.id
}
#Association route tables with subnets
resource "aws_route_table_association" "subnet_association_2" {
  subnet_id      = aws_subnet.sg_subnet_2.id
  route_table_id = aws_route_table.SG_Route_Table.id
}