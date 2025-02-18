#  Automatically fetch the VPC ID based on a tag or name
# data "aws_vpc" "SG_vpc1" {
#   # You can search by tags or by the name of the VPC
#   filter {
#     name   = "tag:Name"  # Filter by the 'Name' tag (or other tag)
#     values = ["SG_vpc1"] # Replace with the name tag of your VPC
#   }
# }
data "terraform_remote_state" "master-vpc" {
  backend = "remote"
  config = {
    organization = "terraform-sg"
    workspaces = {
      name = "master-vpc"
    }
  }
}

#Create Subnet
resource "aws_subnet" "sg_subnet_1" {
  vpc_id                  = data.terraform_remote_state.master-vpc.outputs.SG-vpc-id
  cidr_block              = "10.0.0.0/20"
  availability_zone       = "ap-southeast-1a" # Change as needed
  map_public_ip_on_launch = false             # Set to true for public subnet

  tags = {
    Name = "sg_subnet_1"
  }
}
# resource "aws_subnet" "sg_subnet_2" {
#   vpc_id                  = data.terraform_remote_state.master-vpc.outputs.SG_vpc1
#   cidr_block              = "10.0.16.0/20"
#   availability_zone       = "ap-southeast-1b" # Change as needed
#   map_public_ip_on_launch = false             # Set to true for public subnet

#   tags = {
#     Name = "sg_subnet_2"
#   }
# }